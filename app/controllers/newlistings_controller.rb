 class NewlistingsController < ApplicationController

  include HTTParty

  def newlistings
    @response = HTTParty.get 'https://api.empireflippers.com/api/v1/listings/list?new_listing=true'
    render json: @response
  end


end
