require 'rails_helper'

RSpec.describe ScrapedAttribute, type: :model do
  describe 'validations' do
    subject { build(:scraped_attribute) }

    it { is_expected.to validate_presence_of(:name) }

    it { is_expected.to belong_to(:scraped_tag) }
  end
end
