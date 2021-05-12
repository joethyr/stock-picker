def stockpicker(prices)
  profit_days = {}
  prices.each_with_index do |buyprice, buyday|
    prices.each_with_index do |sellprice, sellday|
      if sellday > buyday
        my_hash[[buyday, sellday]] = sellprice - buyprice
      end
    end
  end
  max_profit = profit_days.max_by { |k,v| v }
  p " The best day to buy is on day #{max_profit[0][0]} and sell on day #{max_profit[0][1]} for a maximum profit of $#{max_profit[1]}!"

  # puts my_hash.key(my_hash.values.max)
  # profit_days.each_index { |e| puts (profit_days[e][1])}
end

prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

stockpicker(prices)
