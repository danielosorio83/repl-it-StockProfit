require './main.rb'

describe 'StockProfit' do
  subject { StockProfit.new(array).call }

  describe 'given an array' do
    let(:array){ [9, 11, 8, 5, 7, 10] }
    
    it 'returns the right profit' do
      expect(subject.profit).to eq(5)
    end

    it 'returns the right buying price' do
      expect(subject.buy).to eq(5)
    end

    it 'returns the right selling price' do
      expect(subject.sell).to eq(10)
    end
  end
end