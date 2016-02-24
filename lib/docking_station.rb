require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
      raise Exception.new("No bikes avaliable.") unless @bike
      @bike
  end

  def dock_bike(bike)
    raise Exception.new("Docking station full.") if @bike
    @bike = bike
  end
end
