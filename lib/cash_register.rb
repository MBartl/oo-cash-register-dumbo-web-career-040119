require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :title, :price
  
  def initialize(*discount)
    @total = 0
    @discount = discount[0]
  end
  
  def total
    binding.pry
  end
  
  def add_item(title, price)
    @title = title
    @price = price
  end
  
end