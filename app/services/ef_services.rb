=begin
class EFController < ApplicationController


  def get_all_listings
    response = HTTP.get("https://us-central1-marketplace-test-6a376.cloudfunctions.net/efMarketplaceTest")



  end


  def get_new_listings
    response = HTTP.get("https://us-central1-marketplace-test-6a376.cloudfunctions.net/efNewListings")

  end

  def get_listing_by_number(id)
    response = HTTP.get("https://api.empireflippers.com/api/v1/listings/list?listing_number=#{id}")

  end


  def sort_listings_by_order(order_type, order_asc_desc)


  end

end

=end
