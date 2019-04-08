require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :title, :price
  
  def initialize(*discount)
    @total = 0
    @discount = discount.to_i
  end
  
  def total
  end
  
  def add_item(title, price)
    @title = title
    @price = price
  end
  
end