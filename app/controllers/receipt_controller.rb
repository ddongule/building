class ReceiptController < ApplicationController
  def index
    @amount = Array.new
    shop = params[:shopInfo]
    @wineShop = shop.split(",")
    @wineName = params[:buyInfo]
    @list = @wineName.split(",")
    for i in 0..@list.length
      @test = params[@list[i]]
      @amount.push(@test)
    end
  end
end
