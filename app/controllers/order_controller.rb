class OrderController < ApplicationController
  before_action :authenticate_user!, only: [ :index ]
  require 'json'
  require 'rubygems'
  def index
    # @showValue = "hi"

  end
  
  # def edit
  #   authorize_action_for @order  
  # end


    # <% form_for(payment_path, :method => "post") do |f| -%>
    #     <%= f.hidden_field(:authenticity_token) -%>
    #     <%= f.hidden_field name: 'buyList', id: 'list' -%>
    #     <%= f.submit "발주하기" -%>
    # <% end -%>


    # <form action = "/payment/index" method = "post">
    #     <input type='hidden' value='<%= form_authenticity_token %>' name = 'authenticity_token'></input>
    #     <input type='hidden' name = 'buyList' id = 'list'></input>
    #     <input type = 'submit' value = "발주하기" onclick = "receive()"></input>
    # </form>

end
