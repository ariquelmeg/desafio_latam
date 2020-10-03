require_relative 'carta'

class Baraja
  attr_accessor :baraja

  Numeros = [1..13]
  Pintas=['C','D','E','T']

  def initialize
    @baraja = []

    (Numeros.count).times do |i|
      (Pintas.count).times do |j|
      baraja = baraja.push(Numeros[i],Pintas[j])
      end
    end
  end

  def barajar
    return baraja = baraja.shuffle
  end

  def sacar
    return baraja.pop
  end

  def repartir_mano
    mano = baraja[0..4]
    return mano
  end

end

mazo = Baraja.new
puts mazo