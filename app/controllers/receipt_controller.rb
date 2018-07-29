class ReceiptController < ApplicationController
  def index
<<<<<<< HEAD
    @test = params
=======
    @amount = Array.new
    @wineName = params[:buyInfo]
    @list = @wineName.split(",")
    for i in 0..@list.length
      @test = params[@list[i]]
      @amount.push(@test)
    end
>>>>>>> 5b75f2eadeeb9f7441fe1d9212fbaf9824c09fd1
  end
end
