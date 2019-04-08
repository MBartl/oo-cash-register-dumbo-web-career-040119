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
    binding.pry
    if @discount
      @total *= ((100.0-@discount.to_f)/100.0)
      return "After the discount, the total comes to @#{total}."
    else
      return "There is no discount to apply."
    end
  end
  
end