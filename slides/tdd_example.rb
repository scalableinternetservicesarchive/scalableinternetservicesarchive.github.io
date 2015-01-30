# we want a car
# get the latitude, get the longitude
# we want to set an orientation
# we want to make it move forward

class Car
  
  def initialize(latitude = 0, longitude = 0)
    @latitude = latitude
    @longitude = longitude
    @orientation = :north
  end
  
  def get_latitude
    @latitude
  end
  
  def get_longitude
    @longitude
  end
  
  def get_orientation
    @orientation
  end
  
  def set_orientation(orientation)
    @orientation = orientation
  end
  
  def move(distance)
    case  @orientation
    when :south
      @latitude = @latitude - distance
    when :north
      @latitude = @latitude + distance
    when :west
      @longitude = @longitude - distance
    when :east
      @longitude = @longitude + distance
    end
  end
  
end

class CarTest
  def test_make_a_new_car
    car = Car.new
    assert_equal car.class, Car
  end
  
  def test_we_can_get_the_latitude
    car = Car.new(6)
    assert_equal car.get_latitude.class, Fixnum
    assert_equal car.get_latitude, 6
  end
  def test_we_can_get_the_longitude
    car = Car.new(5, 8)
    assert_equal car.get_longitude, 8
  end
  
  def test_the_default_orientation_is_north
    car = Car.new
    assert_equal car.get_orientation, :north
  end

  def test_the_default_orientation_is_settable
    car = Car.new
    car.set_orientation(:south)
    assert_equal car.get_orientation, :south
  end
  
  def test_the_car_can_move
    car = Car.new
    initial_latitude = car.get_latitude
    car.set_orientation(:south)
    car.move(5)
    assert_equal car.get_latitude, initial_latitude - 5
  end

  def test_the_car_can_move_north
    car = Car.new
    initial_latitude = car.get_latitude
    car.set_orientation(:north)
    car.move(5)
    assert_equal car.get_latitude, initial_latitude + 5
  end

  def test_the_car_can_move_west
    car = Car.new
    initial_latitude = car.get_latitude
    initial_longitude = car.get_longitude
    car.set_orientation(:west)
    car.move(5)
    assert_equal car.get_latitude, initial_latitude
    assert_equal car.get_longitude, initial_longitude - 5
  end

  def test_the_car_can_move_east
    car = Car.new
    initial_latitude = car.get_latitude
    initial_longitude = car.get_longitude
    car.set_orientation(:east)
    car.move(5)
    assert_equal car.get_latitude, initial_latitude
    assert_equal car.get_longitude, initial_longitude + 5
  end

end











# Pay no attention to the code behind the curtain

class CarTest
  def assert(something)
    assert_equal(something, true)
  end
  def assert_equal(first_thing, second_thing, message = nil)
    if first_thing != second_thing
      if message
        raise message
      else
        raise "expected #{second_thing}, but found #{first_thing}"
      end
    end
  end
end

at_exit do
  puts "Starting Tests."
  car_test_methods = CarTest.instance_methods.select{ |m| m.to_s.start_with?("test_") }
  car_test_methods.each do |method|
    CarTest.new.send(method)
  end
  puts "#{car_test_methods.size} methods executed successfully."
end
