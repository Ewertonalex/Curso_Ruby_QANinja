

class Conta
    attr_accessor :saldo

    def initialize
        self.saldo = 0.0

    def deposita(valor)
        #puts 'Depositando a quantia de ' + valor.to_s + ' reais.'
        self.saldo += valor
        puts "Depositando a quantia de #{valor} reais."
    end
end

c = Conta.new

c.deposita(100.00)
puts c.saldo