# Ruby é uma linguagem considerasda puramente orientada a objetos
# Porque no Ruby tudo são objetos

# Classe possui atributos e métodos
# Caracteristicas e ações

# Carro (Nome, Marca, Modelo, Cor, Quantidade de portas, etc)
# Ligar, Buzinar, Parar, etc

class Carro
    attr_accessor :nome

    def ligar
        puts 'O carro está pronto para iniciar o trajeto!'
    end
end

civic = Carro.new
civic.nome = 'Civic'

puts civic.nome
civic.ligar