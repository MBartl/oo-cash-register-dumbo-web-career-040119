require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :title, :price

  def initialize(*discount)
    @total = 0.0
    @discount = discount[0]
    @title = []
  end

  def add_item(title, price, *quantity)
    @price = price
    if quantity[0]
      quantity[0].times {@total += price}
      quantity[0].times {@title << title}
    else
      @total += price
      @title << title
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
    @title
  end
  
  def void_last_transaction
    @title.pop
    @total -= @price
  end

  
end