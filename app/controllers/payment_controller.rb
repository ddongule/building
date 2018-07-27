class PaymentController < ApplicationController
  def index
    @list = params[:buyList]
  end
end
