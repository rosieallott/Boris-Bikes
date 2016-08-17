require './lib/bike'

class DockingStation
  attr_reader :bike

DEFAULT_CAPACITY = 20
  def initialize
    @bikes = []
  end

  def release_bike
    raise "no bikes" if @bikes.empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise "full!" if full?
    @bikes << bike
  end

private

  def full?
    @bikes.size >= (DEFAULT_CAPACITY - 1)
  end



end
