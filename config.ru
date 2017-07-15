# config.ru, ejercicio 6 desafio latam, semana 10.
require 'rack'

# nodoc
class MiPrimeraWebApp
  def call(_env)
    [
      200,
      { 'Content-Type' => 'text/html' },
      ['<p>Lorem ipsum dolor sit amet</p>']
    ]
  end
end
run MiPrimeraWebApp.new
