require 'dockingstation'

describe DockingStation do
  it {expect(subject).to respond_to(:release_bike)}
  it {expect(subject.release_bike).to be_a Bike}
  it {expect(Bike.new.working?).to eq true}
  it {expect(subject).to respond_to(:dock_bike).with(1).argument}
  it "docks something" do
    bike = Bike.new
    #We want to return the bike we dock
    expect(subject.dock_bike(bike)).to eq bike
  end
  it {expect(subject).to respond_to(:bike)}
end
