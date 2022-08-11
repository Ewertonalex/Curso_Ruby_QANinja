describe 'suite rspec' do

    it 'soma de valores' do
        soma = 10 + 5 #calculo para teste
        expect(soma).to eql 15 #teste resultado esperado
    end

end

#no terminal rodar rspec para testar