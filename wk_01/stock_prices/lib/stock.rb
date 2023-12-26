class Stock
  def max_profit(prices)
    max_profit = 0
    left, right = 0, 1
    # Following a 2 pointer approach where left is best buy time and right is best sell time
    # we will loop the right to end of the ARRAY
    while right < prices.size
      # if the right segment is higher value, we will take the profit and
      # find the max value of profit and max_profit
      if prices[left] < prices[right]
        profit = prices[right] - prices[left]
        max_profit = [max_profit, profit].max
      else
        # If left is higher, make the left index as right as right is now the lowest
        left = right
      end
      # increase the right to progress on the loop
      right += 1
    end
    max_profit
  end
end
