require_relative 'van'

class Garage

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def unload_van(van)
    @bikes         = van.van_bikes
    van.van_bikes = []
  end

end
