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
    @value = @list.split(",")
  end
end
