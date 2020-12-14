# NOTE: This file is not currenntly being used
# This is the next stage and in progress

module Api
  module V1
    class ListingsController < ApplicationController

      def newlistings

        @response = Faraday.get 'https://us-central1-marketplace-test-6a376.cloudfunctions.net/efNewListings'

        render json: @response

      end

      def alllistings
        @response = Faraday.get 'https://us-central1-marketplace-test-6a376.cloudfunctions.net/efMarketplaceTest'

        render json: @response

      end

    def allsalelistings
        @response = Faraday.get 'https://api.empireflippers.com/api/v1/listings/list?page=1&limit=90&listing_status=For%20Sale'

        render json: @response
      end

    #  def listing
    #    @response = Faraday.get
    #    'https://api.empireflippers.com/api/v1/listings/list?listing_number=${listingNumber}'

     # end

    #  def sortlistings

    #    'https://api.empireflippers.com/api/v1/listings/list?sort=${sortType}&order=${order}&page=1&limit=90&listing_status=For%20Sale'
   #   end

    end
  end
end
