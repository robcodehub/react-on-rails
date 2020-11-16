require 'spec_helper'

class Client
  attr_accessor :name, :savedlistings

  def initialize
    @name = 'Rob'
    @savedlistings = 0
  end
end

describe Client do
  it 'client name is Rob' do
  client = Client.new
    expect(client.name).to eq('Rob')
  end

  it 'client has no saved listings' do
    client = Client.new
      expect(client.savedlistings).to eq(0)
    end

end
