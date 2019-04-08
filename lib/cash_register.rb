require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :title

  def initialize(*discount)
    @total = 0
    @discount = discount[0]
  end

  def add_item(title, price, *quantity)
    @title = title
    @total += price
  end
  
end