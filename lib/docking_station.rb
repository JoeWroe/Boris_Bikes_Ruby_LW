require_relative 'bike'

class DockingStation

  attr_reader :bikes, :capacity

  def initialize
    @bikes    = []
    @capacity = 20
  end

  def release_bike(bike)
      raise Exception.new("No bikes avaliable.") if @bikes.empty?
      @bikes.delete(bike)
  end

  def dock_bike(bike)
    raise Exception.new("Docking station full.") if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.length == 20
  end
end
