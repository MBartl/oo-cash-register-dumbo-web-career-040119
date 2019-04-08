require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :title

  def initialize(*discount)
    @total = 0.0
    @discount = discount[0]
  end

  def add_item(title, price, *quantity)
    @title = title
    if quantity[0]
      quantity[0].times {@total += price}
    else
      @total += price
    end
  end
  
  def apply_discount
    if @discount
      @total *= ((100-@discount)/100)
      return "The price was reduced by #{discount}%"
    else
      return "Error: There is no discount to apply"
  
end