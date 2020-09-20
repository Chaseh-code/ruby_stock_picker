def stock_picker(stocks)
    buy = 0
    sell = 0
    profit = 0
    wombo = stocks.combination(2).to_a

    wombo.each do |comb|
        if(comb[1]-comb[0]) > profit
            profit = comb[1]-comb[0]
            buy = stocks.index(comb[0])
            sell = stocks.index(comb[1])
        end
    end

    p profit <=0 ? "Save your money, the market sucks almost as much as 2020 right now!" : "The best time to buy is on day #{buy}, and the best time to sell is on day #{sell}. To make a profit of $#{profit}."
end

stocks = [1.5,32,369,9,22,578.005,28,2.55555]#[0,123456.789]#[783,-500002,50.983,-21.89,23.5,2,186.13]#[12,19,28,576,8,0,-1,25]#[6, 15, 6, 17, 25, 7, 3, 47, 18]#[17,3,6,9,15,8,6,1,10]
stock_picker(stocks)