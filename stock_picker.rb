prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stockpicker(prices)
  best_p = 0
  check_p = 0
  profit = 0
  prices.each do |e|
    prices.each do |i|
      if prices.index(e) < prices.index(i)
        check_p = i - e
      end
      if check_p > profit
        profit = check_p
      end
    if profit > best_p
      best_p = profit
    end
    end
  end
  puts best_p
end

stockpicker(prices)
