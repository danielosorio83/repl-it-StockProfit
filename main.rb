class StockProfit
  attr_accessor :buy, :sell, :profit

  def initialize(stock_prices)
    @stock_prices = stock_prices
    @profit = 0
    @buy = nil
    @sell = nil
  end

  def call
    @profit = calculate_profit(@stock_prices.dup)
    self
  end

  private

  def calculate_profit(stock_prices)
    @buy = stock_prices.min
    index = stock_prices.index(@buy)
    @sell = stock_prices.slice(index+1..-1).max
    profit = @sell - @buy
    if profit < 0
      stock_prices.delete(buy)
      return calculate_profit(stock_prices)
    end
    profit
  end
end