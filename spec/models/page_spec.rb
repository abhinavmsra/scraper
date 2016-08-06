require 'rails_helper'

RSpec.describe Page, type: :model do
  describe 'validations' do
    subject { build(:page) }

    it { is_expected.to validate_presence_of(:url) }

    it { is_expected.to have_many(:scraped_tags) }
  end
end
