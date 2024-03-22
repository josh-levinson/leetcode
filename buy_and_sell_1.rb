# @param {Integer[]} prices
# @return {Integer} 
#
# prices = [7, 1, 5, 4, 6] 

def max_profit(prices)
  total = 0
  low = prices[0]

  prices.each_with_index do |price, index|
    # new low, end profit run
    if price < low
      low = price
    # price up from low, is it better than previous profit?
    else
      price_diff = price - low
      total = price_diff if price_diff > total
    end
  end
  total
end
