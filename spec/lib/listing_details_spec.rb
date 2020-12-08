
class ListingDetails
  attr_accessor :summary
  attr_accessor :assets_included
  attr_accessor :hours_worked_per_week
  attr_accessor :opportunities
  attr_accessor :risks
  attr_accessor :has_trademark
  attr_accessor :work_required
  attr_accessor :days_on_marketplace
  attr_accessor :sba_financing_approved
  attr_accessor :pricing_period_months
  attr_accessor :buyer_profile

  def initialize
    @summary = "This listing is for an eCommerce business created in August 2015 minimal effort is required to maintain this business at this time. This business earns 100% from eCommerce using the Shopify platform. The top channels in terms of generating traffic to the business include direct (41%), social media (25%), and referral (17%). The top countries in terms of generating the most traffic to the business stem from the US (94%), Canada (3%), and Australia (~1%) marketplaces respectively."
    @assets_included = [
      "Domain and all site content/files",
      "Shopify storefront account",
      "Email list (84,000+ addresses and 64,000 subscribers)",
      "Social media accounts (Instagram, Facebook, and Twitter)",
      "Employee contracts",
      "*Inventory is not normally included in the list price, further details can be provided to active verified Buyers."
  ]
    @hours_worked_per_week = 30
    @opportunities = [
      "Adding to the product line",
      "Adding variations to the existing product line",
      "Expanding outside of Shopify sales (Amazon, wholesale, Walmart, etc.)",
      "Switching to overseas production for products",
      "Growing and monetizing the large email list"
  ]
    @risks = [
      "An increase in ad pricing could make the advertisement margins unprofitable.",
      "E-commerce businesses can be negatively impacted by an increase in cost of goods (COGS) from the manufacturer."
  ]
    @has_trademark = false
    @work_required = [
      "Forecasting inventory orders with manufacturing team",
      "Managing 3 VAs and their operations for the business",
      "Monitoring sales and analytics",
      "Monitoring PPC ad campaigns",
      "Outsourcing content creation to contractors"
  ]
    @days_on_marketplace = 0
    @sba_financing_approved = false
    @pricing_period_months = 11
    @buyer_profile = [
      "Lifestyle Larry",
      "Portfolio Paul",
      "Strategic Sally"
  ]
  end
end


RSpec.describe 'Listing_Details' do

  describe 'listing description' do
    listing = ListingDetails.new
    it 'checks for substring inclusion of key points in description' do
      expect(listing.summary).to include('channels')
      expect(listing.summary).to include('traffic')
      expect(listing.summary).to include('countries')
    end
  end


  describe 'buyer profiles' do
    it 'checks for inclusion in the array, regardless of order' do
      listing = ListingDetails.new
      expect(listing.buyer_profile).to include("Lifestyle Larry", "Strategic Sally")
    end
  end

  describe 'pricing period' do
    it 'checks pricing period is not null or 0' do
      listing = ListingDetails.new
      expect(listing.pricing_period_months).not_to eq(nil)
      expect(listing.pricing_period_months).not_to eq(0)
    end

    it 'checks pricing period is more than 2 months' do
      listing = ListingDetails.new
      expect(listing.pricing_period_months).to be > 2
    end
  end

  describe 'Days on marketplace' do
    listing = ListingDetails.new

  it 'checks days on marketplace is an integer' do
    expect(listing.days_on_marketplace).to be_a_kind_of(Integer)
  end

  it 'checks days on marketplace is more than or equal to 0' do
    expect(listing.days_on_marketplace).to be >= 0
  end
end

  describe 'SBA financing' do
    it 'expects sba financing to be a boolean' do
      listing = ListingDetails.new
      expect(listing.sba_financing_approved).to satisfy {|b| b == true or b == false}
    end
  end

end
