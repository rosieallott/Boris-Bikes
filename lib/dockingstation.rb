require './lib/bike'

class DockingStation
  attr_reader :has_bike

  def release_bike
    Bike.new
    @has_bike = false
  end

  def dock_bike(bike)
    @has_bike = true
  end

end
