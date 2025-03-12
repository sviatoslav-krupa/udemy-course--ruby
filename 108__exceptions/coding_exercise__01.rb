# Below, you'll find a Truck class definition. A truck 
# has 18 wheels and a tank of gas. 
#
# We want to raise an error if a driver attempts to drive
# a truck that has a missing wheel or an empty tank of gas.
#
# Define two custom error classes
#     - WheelMissingError
#     - InsufficientGasError
#
# When the drive method is invoked, raise a WheelMissingError
# if there are less than 18 wheels on the truck.
# Provide an error message of "Replace your wheel!"
#
# When the drive method is invoked, raise an InsufficientGasError
# if there are less than 0 gallons in the car.
# Provide an error message of "Fill up your tank!"

class WheelMissingError < StandardError; end
class InsufficientGasError < StandardError; end

class Truck
  attr_reader :wheels, :gallons_of_gas
  
  def initialize
    @wheels = 18
    @gallons_of_gas = 0
  end
  
  def lose_wheel
    @wheels -= 1
  end
  
  def fill_up_tank
    @gallons_of_gas += 20
  end
  
  def drive
    raise WheelMissingError, "Replace your wheel!" if wheels < 18
    raise InsufficientGasError, "Fill up your tank!" if gallons_of_gas <= 0
    @gallons_of_gas -= 10
  end
end

truck = Truck.new
truck.fill_up_tank  #=> 20
truck.drive         #=> 10
truck.lose_wheel    #=> 17
truck.drive         #=> Replace your wheel! (WheelMissingError)
