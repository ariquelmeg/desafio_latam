class Carta
  attr_accessor :numero
  attr_accessor :pinta

  def initialize(numero, pinta)
    @numero = numero
    @pinta = pinta
  end
end

Numeros = [1..13]
Pintas=['C','D','E','T']
Mano = []

5.times do |i|
  Mano.push(Carta.new(Random.rand(1..13),Pintas.sample))
end

#print Mano[0].pinta
#puts Mano[0].numero
