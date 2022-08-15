class AvengersHeadQuarter
    attr_accessor :list

    def initialize #construtor
        self.list = [] #Dizendo que lista é um array
    end

    def put(avenger)
        #puts self.list.class #saber o tipo
        self.list.push(avenger) #adicionar um vigandor na lista
    end
end

#TDD (Desenvolvimento guiado por testes)
describe AvengersHeadQuarter do

    it 'Deve adcionar um vingador' do
        hq = AvengersHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']
        expect(hq.list).to include 'Spiderman'
    end

    it 'Deve adicionar uma lista de Vingadores' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        res = hq.list.size > 0 #saber se é true ou false

        expect(hq.list).to include 'Thor' #verificar se na lista tem o registro Thor
        expect(hq.list.size).to be > 0 #verificando se é uma lista com dados
        expect(res).to be true  #verifica se Res é verdadeiro
    end

    it 'Thor deve ser o primeiro da lista' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        expect(hq.list).to start_with ('Thor') #verifica primeiro item da lista


    end

    it 'Iroman deve ser o último da lisa' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Ironman')

        expect(hq.list).to end_with ('Ironman') #verifica o ultimo item da lista

    end

    it 'deve conter o sobrenome' do

    avenger = 'Peter Parker'

    expect(avenger).to match(/Parker/) #verifica se contem dado na string
    expect(avenger).not_to match(/Ewerton/) #verifica se nao contem dado na String


    end

end