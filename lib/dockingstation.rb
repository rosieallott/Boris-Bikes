require './lib/bike'

class DockingStation
  attr_reader :bike

  def release_bike
    raise "no bikes" unless @bike
    bike = @bike
    @bike = nil #dont return me
    bike
  end

  def dock_bike(bike)
    @bike = bike
  end

end
