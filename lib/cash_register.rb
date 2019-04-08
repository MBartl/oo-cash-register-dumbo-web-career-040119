require 'pry'

class CashRegister
  
  @@titles = []
  attr_accessor :total, :discount, :title, :price

  def initialize(*discount)
    @total = 0.0
    @discount = discount[0]
  end

  def add_item(title, price, *quantity)
    @@titles << title
    @price = price
    if quantity[0]
      quantity[0].times {@total += price}
    else
      @total += price
    end
  end
  
  def apply_discount
    if @discount
      @total *= (100.0-@discount.to_f)/100.0
      return "After the discount, the total comes to $#{total.to_i}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @@titles
  end
  
  def void_last_transaction
    @@item.pop
    @total -= @price
  end

  
end