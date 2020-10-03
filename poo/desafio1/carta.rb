class Carta
    attr_accessor :numero
    attr_accessor :pinta
    def initialize (numero, pinta)
        @numero = numero
        @pinta = pinta
    end
end

numeros = [1..13]
pintas = ['C','D','E','T']
mano = []

5.times do |i|
    carta_azar = Carta.new(Random.rand(13), pintas.sample)
    carta_azar = [carta_azar.numero,carta_azar.pinta]
    mano.push(carta_azar)
end

puts mano