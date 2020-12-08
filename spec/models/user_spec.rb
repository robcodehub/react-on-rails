
class User
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :email

  def initialize(first_name, last_name, email)
    @first_name = niche_type
    @last_name = last_name
    @email = email
  end
end


RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'ensures that a first name is entered' do
      user = User.new(last_name: 'LastName', email: 'test@test.com').save
      expect(user).to eq(false)
    end

    it 'ensures that a last name is entered' do
      user = User.new(first_name: 'FirstName', email: 'test@test.com').save
      expect(user).to eq(false)
    end

    it 'ensures that an email address is entered' do
      user = User.new(first_name: 'FirstName', last_name: 'LastName').save
      expect(user).to eq(false)
    end

    it 'should save successfully' do
      user = User.new(first_name: 'FirstName', last_name: 'LastName', email: 'test@test.com').save
      expect(user).to eq(true)
    end

  end

  context 'scope tests' do
  end
end
