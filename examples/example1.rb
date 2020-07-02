require './main.rb'

subject = StockProfit.new([9, 11, 8, 5, 7, 10]).call
puts "input: [9, 11, 8, 5, 7, 10]"
puts "output(profit): #{subject.profit}"
puts "output(buy): #{subject.buy}"
puts "output(sell): #{subject.sell}"