require 'rails_helper'

RSpec.describe ScrapedTag, :type => :model do
  describe 'validations' do
    subject { build(:scraped_tag) }

    it { is_expected.to validate_presence_of(:name) }

    it { is_expected.to have_many(:scraped_attributes) }
    it { is_expected.to belong_to(:page) }
  end
end
