require 'rails_helper'

RSpec.describe ScrapingService, :type => :service do
  describe '.parse' do
    it 'should create a new page' do
      VCR.use_cassette('services-scrape') do
        url = 'https://github.com'
        ScrapingService.parse(url)
        page = Page.last
        expect(page.url).to eq(url)
      end
    end
  end
end
