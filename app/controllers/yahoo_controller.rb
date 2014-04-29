class YahooController < ApplicationController
  require 'yahoo_finance'
  def home
    @stocks = Stocks.all
    @data = []
      @stocks.each do |stock|
         @data << YahooFinance.quotes([stock.symbol], [:last_trade_price, :pe_ratio, :change_in_percent, :previous_close])
    end
    @data.flatten
    # @data = YahooFinance.quotes(["BVSP", "NATU3.SA", "USDJPY=X"], [:ask, :bid, :last_trade_date])
    @counter = 0
    #@test = @data[0].ask

  end


    def update

    end

    def create
      @stock = Stocks.new(params.permit(:symbol))
      if @stock.save
        redirect_to '/'
      else
        redirect_to new_yahoo
      end
    end

    def new
      @stock = Stocks.new
    end

    def delete

    end
end
