class Veiculo #Classe pai com atributos e definições que são comuns as classes filhos (Carro e Moto)
    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
        puts "O #{nome} está pronto para iniciar o trajeto!"
    end

    def buzinar
        puts 'Beep!'
    end

end

class Carro < Veiculo
    def dirigir
        puts "#{nome} Iniciando o trajeto!"
    end


end

class Moto < Veiculo
    def pilotar
        puts "#{nome} Iniciando o trajeto!"
    end

end


civic = Carro.new('Civic', 'Honda', 'SI')
civic.ligar
civic.buzinar
civic.dirigir

lancer = Carro.new('Lancer', 'Mitisubishi', 'EVO')
lancer.ligar
lancer.buzinar
lancer.dirigir

fazer = Moto.new('Fazer', 'Yamaha', '250cc')
fazer.ligar
fazer.buzinar
fazer.pilotar