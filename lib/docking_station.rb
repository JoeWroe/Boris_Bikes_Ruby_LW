require_relative 'bike'

class DockingStation

  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike(bike)
      raise Exception.new("No bikes avaliable.") if @bikes.empty?
      bike
  end

  def dock_bike(bike)
    raise Exception.new("Docking station full.") if @bikes.length == 20
    @bikes << bike
  end

  def full?
    @bikes.length == 20
  end
end
