class PaymentController < ApplicationController
  require 'json'
  require 'rubygems'

  def index
    @list = params[:buyList]
    @list = @list.gsub!(":",",")
    @list = @list.gsub!('"',"")
    @list = @list.gsub!('[',"")
    @list = @list.gsub!(']',"")
    @list = @list.gsub!('{',"")
    @list = @list.gsub!('}',"")
    temp = @list
    @value = @list.split(",")
    @showValue = temp.gsub!('_'," ")
    @showValue = @showValue.split(",")
  end
end
