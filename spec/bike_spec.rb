require 'bike'

describe Bike do
  it {expect(subject).to respond_to(:working?)}

    # in bike_spec.rb
  it 'can be reported broken' do
    subject.report_broken
    # let's use one of RSpec's predicate matchers
    expect(subject.working?).to eq false
  end

end
