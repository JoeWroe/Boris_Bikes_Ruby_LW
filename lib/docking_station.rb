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
      raise Exception.new("No bikes avaliable.") if bikes.empty?
      bikes.delete(bike)
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
