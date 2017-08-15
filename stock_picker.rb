
def stock_picker(array)
  #input an array
  buy = array.min
  buy = array.index(buy)
  sell = array.max
  sell = array.index(sell)
  #output the days of the best time to buy(lowest) and sell(highest)
  puts "Buy: Day #{buy}\nSell: Day #{sell}"
end

stock_picker([20,3,26,29,5,8,6,5,10])
