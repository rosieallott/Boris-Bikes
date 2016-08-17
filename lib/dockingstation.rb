require './lib/bike'

class DockingStation
  attr_reader :bike

  def initialize
    @bike = []
  end

  def release_bike
    raise "no bikes" unless @bike
    bike = @bike
    @bike = nil #dont return me
    bike
  end

  def dock_bike(bike)
    raise "full!" if @bike.size >= 20
    @bike << bike
  end

end
