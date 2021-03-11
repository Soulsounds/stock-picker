stocks=[17,3,6,9,15,8,6,1,10]
def stock_picker(stock)
    profit = 0
    profit_days = []
    sell_val = 0
    buy_val = 0
    final_profit = 0

    stock.each_with_index{ |sl_val, sell_index| 
      sell_val = sl_val
        stock.each_with_index{|bu_val, buy_index|
          if bu_val < sl_val && buy_index < sell_index
            buy_val = bu_val
            profit = sl_val - bu_val
              if profit > final_profit 
                final_profit = profit
                profit_days.clear
                profit_days.push(buy_index, sell_index)         
                  end
            end
      
      
        }
    }
    return profit_days
end

p stock_picker(stocks)