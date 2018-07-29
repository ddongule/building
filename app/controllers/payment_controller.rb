class PaymentController < ApplicationController
  def index
    list = params[:buyList]
    @value =list.split(",")


  end
end
