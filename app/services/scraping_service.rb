require 'httparty'
require 'nokogiri'

module ScrapingService
  def ScrapingService.parse(url)
    response = HTTParty.get(url)
    parse_page = Nokogiri::HTML(response)

    page = Page.new(url: url)

    ['h1', 'h2', 'h3'].each do |header_tag|
      parse_page.css(header_tag).each do |h|
        page.scraped_tags << ScrapedTag.new(name: header_tag)
        page.scraped_tags.last.scraped_attributes <<
          ScrapedAttribute.new(name: 'inner_html', value: h.inner_html)
      end
    end

    parse_page.css('a').each do |link_tag|
      page.scraped_tags << ScrapedTag.new(name: 'a')
      page.scraped_tags.last.scraped_attributes <<
        ScrapedAttribute.new(name: 'href', value: link_tag.attr('href'))
    end

    page.save!
  end
end
