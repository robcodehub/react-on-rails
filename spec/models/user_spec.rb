class User
  attr_reader :first_name
  attr_reader :last_name
  attr_reader :email
  attr_reader :saved_listings

  def initialize(first_name, last_name, email, saved_listings)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @saved_listings = saved_listings
  end
end

RSpec.describe User do
  let(:user) {described_class.new('Rob', 'Test', 'test@test.com', 0)}
    it 'ensures that an email is entered' do
      expect(user.email).to eq('test@test.com')
    end

    it 'ensures that a last name is entered' do
      expect(user.last_name).not_to eq(nil)
    end

    it 'ensures that an email address is entered' do
      expect(user.email).not_to eq(nil)
    end

    it 'expects username to be Rob' do
        expect(user.first_name).to eq('Rob')
      end

      it 'user has no saved listings' do
        expect(user.saved_listings).to eq(0)
      end
end
