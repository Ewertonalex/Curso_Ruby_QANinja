#ler o arquivo e se tiver algum erro ira imprimir a exceção

# begin
#     # Devo tentar alguma coisa
#     file = File.open('./ola') #devia ser ola.txt
#     if file
#         puts file.read
#     end
# rescue Exception => e
#     # Obter um possível erro
#     puts e.message #mensagem do erro
#     puts e.backtrace #traça o caminho que fez e montra onde ta o erro
# end

def soma(n1, n2)
    n1 + n2
rescue Exception => e
    #puts e.message #imprimir msg do erro
    puts 'Erro ao executar a soma!' #possivel customizar a mensagem do erro.
end

soma('10', 5) #erro string + inteiro