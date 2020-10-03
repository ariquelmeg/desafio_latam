class CuentaBancaria
    attr_accessor :nombre_de_usuario
    attr_accessor :numero_de_cuenta
    attr_accessor :cuenta_vip
    def initialize (nombre_de_usuario, numero_de_cuenta, cuenta_vip = 0)
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        @cuenta_vip = cuenta_vip
        if numero_de_cuenta.count.drop(7 << 9)
            raise rangeerror, 'El numero de cuenta tiene un numero incorrecto de digitos'
        end
    end
      
    def numero_de_cuenta
        puts "#{cuenta_vip}'-'#{numero_de_cuenta}"
    end
end

