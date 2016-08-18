require 'dockingstation'

describe DockingStation do
  it {expect(subject).to respond_to(:release_bike)}
  it {expect(Bike.new.working?).to eq true}
  it {expect(subject).to respond_to(:dock_bike).with(1).argument}
  it "docks something" do
    bike = Bike.new
    #We want to return the bike we dock
    expect(subject.dock_bike(bike)).to include bike #change eq to include? bike
  end

  it "raises empty exceptions" do
    expect{subject.release_bike}.to raise_error("no bikes")
  end
#currently tests anytime relseasing a bike an error is raised. if too many bikes are taken, report back empty.
  #so dock cannot be full but can be empty

  it "only allows docking up to a certain capacity then throws full error" do
    subjecto = DockingStation.new
    expect {DockingStation::DEFAULT_CAPACITY.times do subjecto.dock_bike(Bike.new) end}.to raise_error("full!")
  end

  #test initializing DockingStation with capacity argument
  it "when given no argument, docking station equals default capacity" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it "when given an argument to docking station, capacity equals that argument" do
    n = 3
    expect(DockingStation.new(n)).to eq @capacity
  end

end
