class OrderController < ApplicationController
  before_action :authenticate_user!, only: [ :index ]

  def index
  end
  
  # def edit
  #   authorize_action_for @order  
  # end
end
