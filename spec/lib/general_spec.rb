

RSpec.describe 'general tests' do
  subject { ["Listing 1", "Listing 2", "Listing 3", "Listing 4"] }

  it 'checks the number of listings when new listing added' do
    expect { subject.push("Listing 5") }.to change { subject.length }.by(1)
  end

  it 'checks the number of listings when sold listing removed' do
    expect { subject.pop }.to change { subject.length }.by(-1)
  end

end


