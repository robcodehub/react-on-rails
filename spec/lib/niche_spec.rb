class Niche
  attr_reader :niche_type

  def initialize(niche_type)
    @niche_type = niche_type
  end
end

RSpec.describe Niche do
  subject { described_class.new('Information') }
  let(:listing_details) { described_class.new('Books') }

  it 'check niches match the niche provided' do
    expect(subject.niche_type).to eq('Information')
    expect(listing_details.niche_type).to eq('Books')
  end
end
