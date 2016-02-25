require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_accessor :capacity
  attr_reader :bikes

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes    = []
    @capacity = capacity
  end

  def release_bike(bike)
    if bikes.empty?
      raise Exception.new("No bikes avaliable.")
    elsif bike.working == false
      raise Exception.new("No working bikes avaliable.")
    else
      bikes.delete(bike)
    end
  end

  def dock_bike(bike)
    raise Exception.new("Docking station full.") if full?
    bikes << bike
  end

  private

  def full?
    bikes.length == capacity
  end
end
