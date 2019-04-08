require 'pry'

class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(*discount)
    @total
    @discount = discount