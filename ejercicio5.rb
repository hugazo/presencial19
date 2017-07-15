module Herviboro

  def definir
    'Sólo me alimento de vegetales!'
  end

  def dieta
    'Soy un Herviboro!'
  end
end

# Clase animal
class Animal
  def saludar
    'Soy un animal!'
  end
end

class Conejo < Animal
  include Herviboro
  def initialize(name)
    @name = name
  end
end

conejo = Conejo.new('Bugs Bunny')
puts conejo.saludar
puts conejo.dieta
puts conejo.definir
