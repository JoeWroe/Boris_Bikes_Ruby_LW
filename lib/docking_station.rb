require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike(bike)
      raise Exception.new("No bikes avaliable.") if @bikes.empty?
      @bikes.delete(bike)
  end

  def dock_bike(bike)
    raise Exception.new("Docking station full.") if full?
    @bikes << bike
  end

  def full?
    @bikes.length == 20
  end
end
