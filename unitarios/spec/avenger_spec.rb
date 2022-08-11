class AvengersHeadQuarter
    attr_accessor :list

    def initialize #construtor
        self.list = [] #Dizendo que lista é um array
    end

    def put(avenger)
        puts self.list.class #saber o tipo
        self.list.push(avenger) #adicionar um vigandor na lista
    end
end

#TDD (Desenvolvimento guiado por testes)
describe AvengersHeadQuarter do

    it 'Deve adcionar um vingador' do
        hq = AvengersHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']
    end

end