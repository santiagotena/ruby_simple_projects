def stock_picker(stock_prices)

    best_days = [0,0]
    best_profit = 0

    for buy_day in 0...stock_prices.length-1

        for sell_day in buy_day+1...stock_prices.length

            profit = stock_prices[sell_day]-stock_prices[buy_day]

            if profit > best_profit
                best_days = [buy_day, sell_day]
                best_profit = profit
            end

        end

    end

    puts "Buy at day #{best_days[0]} and sell at day #{best_days[1]}"
    return best_days

end

stock_prices = [17,3,6,9,15,8,6,1,10]

stock_picker(stock_prices)