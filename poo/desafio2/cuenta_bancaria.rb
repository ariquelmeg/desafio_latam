class CuentaBancaria
  attr_accessor :banco
  attr_accessor :numero_de_cuenta
  attr_accessor :saldo

  def initialize(banco, numero_de_cuenta, saldo =0)
    @banco = banco
    @numero_de_cuenta = numero_de_cuenta
    @saldo = saldo
  end

  def transferir(monto_transferido, cuenta_externa)
    saldo = saldo - monto_transferido
    cuenta_externa.saldo = saldo + monto_transferido
  end
end

class Usuario
  attr_accessor :nombre
  attr_accessor :cuenta_bancaria

  def initialize(nombre, cuenta_bancaria)
    @nombre = nombre
    @cuenta_bancaria = cuenta_bancaria
  end

  def saldo_total
    saldo_total = 0
    cuenta_bancaria.each do |i|
    saldo_total = saldo_total + cuenta_bancaria[i].saldo
    end
  end

end