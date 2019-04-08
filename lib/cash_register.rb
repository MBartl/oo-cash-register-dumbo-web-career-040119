require 'pry'

class CashRegister
  
  attr_reader :total

  def initialize(*discount)
    @total = 0
    @discount = discount[0]
  end

  def add_item(title, price)
    @title = title
    @price = price
    @total += price
  end
  
end