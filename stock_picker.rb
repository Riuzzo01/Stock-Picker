def stock_picker(prices)
  index = 0
  values = (prices.map do |price|
             if index < prices.length - 1
               value = price - prices[index + 1..prices.length - 1].max
             else 
               value = 0
             end
             index += 1
             value
           end)
   bestTransition = values.min
   dayToBuy = values.index(bestTransition)
   dayToSell = prices.index(prices[values.index(bestTransition) + 1..prices.length - 1].max)
   result = [dayToBuy, dayToSell]
   puts result.to_s
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([1, 3, 2, 6, 7, 1, 4, 3])