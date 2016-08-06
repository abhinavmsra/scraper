require 'rails_helper'

RSpec.describe Api::V1::PagesController, :type => :controller do
  let!(:scraped_attribute) { create :scraped_attribute }

  describe 'GET #index' do
    it 'should return a list of all pages' do
      get :index
      expect(json_response[:pages].count).to eq(Page.count)
    end
  end

  describe 'POST #create' do
    context 'when url is valid' do
      it 'should create a new page' do
        VCR.use_cassette('controller-valid-scrape') do
          expect{
            post :create, params: { url: 'https://github.com' }
          }.to change(Page, :count).by(1)
        end
      end

      it 'should respond success message' do
        VCR.use_cassette('controller-valid-scrape') do
          post :create, params: { url: 'https://github.com' }
          expect(json_response[:status]).to eq('success')
        end
      end
    end

    context 'when url is not valid' do
      it 'should not create a new page' do
        VCR.use_cassette('controller-invalid-scrape') do
          expect{
            post :create, params: { url: 'github' }
          }.to change(Page, :count).by(0)
        end
      end

      it 'should respond error message' do
        VCR.use_cassette('controller-invalid-scrape') do
          post :create, params: { url: 'github' }
          expect(json_response[:status]).to eq('error')
        end
      end
    end
  end

  describe 'GET #show' do
    let(:page) { Page.first }

    context 'when page exists' do
      it 'should return the details of a page' do
        get :show, params: { id: page.id }
        expect(json_response[:page][:id]).to eq(page.id)
      end
    end

    context 'when the page does not exists' do
      it 'should return error message' do
        get :show, params: { id: page.id + 1 }
        expect(json_response[:status]).to eq('error')
      end
    end
  end
end
