require 'dockingstation'

describe DockingStation do
  it {expect(subject).to respond_to(:release_bike)}
  it {expect(subject.release_bike).to eq Bike.new}
  it {expect(Bike.new.working?).to eq true}
end
