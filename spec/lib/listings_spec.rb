

class Listing
  attr_accessor :listing_number
  attr_accessor :public_title
  attr_accessor :average_monthly_net_profit
  attr_accessor :average_monthly_expenses
  attr_accessor :average_monthly_gross_revenue
  attr_accessor :business_created_year
  attr_accessor :listing_price
  attr_accessor :listing_multiple
  attr_accessor :listing_multiple
  attr_accessor :uses_pbn
  attr_accessor :listing_status

  def initialize
    @listing_number = 49215
    @public_title = "$334.5K Per Month eCommerce Site"
    @average_monthly_net_profit = 102372
    @average_monthly_expenses = 232153
    @average_monthly_gross_revenue = 334525
    @business_created_year = 2016
    @listing_price = 5016218
    @listing_multiple = 49
    @uses_pbn = false
    @listing_status = "For Sale"
  end
end



RSpec.describe 'Listing number' do
  it 'listing number is an integer' do
    listing = Listing.new
    expect(listing.listing_number).to be_a_kind_of(Integer)
  end

  it 'listing number equals 49215' do
    listing = Listing.new
    expect(listing.listing_number).to eq(49215)
  end
end

RSpec.describe 'Public Title' do
  it 'public title is string' do
    listing = Listing.new
    expect(listing.public_title).to be_a(String)
  end
end

RSpec.describe 'Revenue Profit Expenses' do
  it 'expects profit, expenses, revenue are integers' do
    listing = Listing.new
    expect(listing.average_monthly_net_profit).to be_a_kind_of(Integer)
    expect(listing.average_monthly_expenses).to be_a_kind_of(Integer)
    expect(listing.average_monthly_gross_revenue).to be_a_kind_of(Integer)
  end

  it 'expects revenue minus expenses to equal profit' do
    listing = Listing.new
    expect(listing.average_monthly_gross_revenue - listing.average_monthly_expenses).to eq(listing.average_monthly_net_profit)
  end
end


RSpec.describe 'Business Created Year' do
  it 'expects year created to be an integer' do
    listing = Listing.new
    expect(listing.business_created_year).to be_a_kind_of(Integer)
  end

  it 'expects year to be less than next year' do
    next_year = 2021
    listing = Listing.new
    expect(listing.business_created_year).to be < next_year
  end
end

RSpec.describe 'PBN' do
  it 'expects pbn to be a boolean' do
    listing = Listing.new
    expect(listing.uses_pbn).to satisfy {|b| b == true or b == false}
  end
end



