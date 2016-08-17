require 'dockingstation'

describe DockingStation do
  it {expect(subject).to respond_to(:release_bike)}
  it {expect(Bike.new.working?).to eq true}
  it {expect(subject).to respond_to(:dock_bike).with(1).argument}
  it "docks something" do
    bike = Bike.new
    #We want to return the bike we dock
    expect(subject.dock_bike(bike)).to eq bike #change eq to include? bike
  end


  it "raises empty exceptions" do
    expect{subject.release_bike}.to raise_error("no bikes")
  end
  it "releases the specific bike I dock" do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.release_bike).to eq bike
  end
#currently tests anytime relseasing a bike an error is raised. if too many bikes are taken, report back empty.
  #so dock cannot be full but can be empty
end
