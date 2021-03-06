class Api::V1::PagesController < ApplicationController

  def index
    pages = Page.all
    render json: { pages: pages }
  end

  def create
    begin
      ScrapingService.parse(params[:url])
      reply = {
        status: 'success'
      }
      status = :ok
    rescue => e
      reply = {
        status: 'error',
        message: e.message
      }
      status = :bad_request
    end
    render json: reply, status: status
  end

  def show
    begin
      page = Page.find(params[:id])
      render json: {
        status: 'success',
        page: Api::V1::Pages::IndexSerializer.new(page)
      },
      status: :ok
    rescue ActiveRecord::RecordNotFound => e
      render json: {
        status: 'error',
        message: e.message
      }, status: :bad_request
    end
  end
end
