class User
  attr_reader :first_name
  attr_reader :last_name
  attr_reader :email
  def initialize(first_name, last_name, email)
    @first_name = first_name
    @last_name = last_name
    @email = email
  end
end

RSpec.describe User do
  let(:user) {described_class.new('Rob', 'Test', 'test@test.com')}
    it 'ensures that an email is entered' do
      expect(user.email).to eq('test@test.com')
    end

    it 'ensures that a last name is entered' do
      expect(user.last_name).not_to eq(nil)
    end

    it 'ensures that an email address is entered' do
      expect(user.email).not_to eq(nil)
    end

end
