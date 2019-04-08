require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :title

  def initialize(*discount)
    @total = 0
    @discount = discount[0]
  end

  def add_item(title, price, *quantity)
    @title = title
    if quantity[0] != nil
      quantity[0].times {@total += price}
    else
      quantity[0].times {@total += price}
    end
  end
  
end