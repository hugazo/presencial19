# Ejercicio 3 desafio latam
class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@cars = 0

  def initialize(model, year)
    @@cars += 1
    super
  end

  def cars_quantity
    @@cars
  end

  def engine_start
    super
    puts 'El motor se ha encendido!'
  end
end

cars = []
1..10.times do cars.push(Car.new('Car', 2017)) end
puts cars[0].cars_quantity
cars[0].engine_start
