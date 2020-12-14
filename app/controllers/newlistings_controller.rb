 class NewlistingsController < ApplicationController

  include HTTParty

  def newlistings
    @response = HTTParty.get 'https://us-central1-marketplace-test-6a376.cloudfunctions.net/efNewListings'
    render json: @response
  end

  def allsalelistings
    @response = HTTParty.get 'https://api.empireflippers.com/api/v1/listings/list?page=1&limit=90&listing_status=For%20Sale'
    render json: @response
  end

  def alllistings
    @response = HTTParty.get 'https://us-central1-marketplace-test-6a376.cloudfunctions.net/efMarketplaceTest'
    render json: @response
  end

end
