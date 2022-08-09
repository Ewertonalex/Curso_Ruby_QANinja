

class Conta
    attr_accessor :saldo

    def deposita(valor)
        #puts 'Depositando a quantia de ' + valor.to_s + ' reais.'
        self.saldo += valor
        puts "Depositando a quantia de #{valor} reais."
    end
end

c = Conta.new

c.saldo = 0.0
c.deposita(100.00)
puts c.saldo