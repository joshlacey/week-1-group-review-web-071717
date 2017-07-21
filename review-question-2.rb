require 'pry'
class Car

attr_reader :make, :model

@@all = []

  def initialize(hash)
    @make = hash[:make]
    @model = hash[:model]
    #@cars_hash = make
    #@cars_hash = model
    #@model = model
    #@cars_hash = {make}
    @@all << self
    #binding.pry
  end

  def self.all
    @@all
  end

  def drive
    "VROOOOOOOOOOOOM!"
  end

  def make
    @cars_hash[:make]
  end

end

binding.pry


car = Car.new("volvo", "lightening")
car.make
#=> "volvo"
car.model
#=> "ligthening"

car.drive
# => "VROOOOOOOOOOOOM!"

Car.all
#=> [car1, car2, car3]

#BONUS#:

Car.new(make: "volvo", model: "lightening")

car.make
#=> "volvo"
car.model
#=> "ligthening"
