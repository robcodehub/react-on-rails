class ListingsController < ApplicationController

  include HTTParty

  def allsalelistings
    @response = HTTParty.get 'https://api.empireflippers.com/api/v1/listings/list?page=1&limit=90&listing_status=For%20Sale'
    render json: @response
  end

  def alllistings
    @response = HTTParty.get 'https://us-central1-marketplace-test-6a376.cloudfunctions.net/efMarketplaceTest'
    render json: @response
  end

  def listingbyid
    @response = HTTParty.get('https://api.empireflippers.com/api/v1/listings/list?listing_number=' + (params[:listingid]))
    render json: @response
  end

  def sortlistings
    @response = HTTParty.get('https://api.empireflippers.com/api/v1/listings/list?sort='+(params[:sorttype])+'&order='+(params[:sortorder])+'&page=1&limit=90&listing_status=For%20Sale')
    render json: @response
  end


end
