class CashRegister
  
  attr_accessor :total, :discount, :quantity, :price
  
  def initialize(discount=0)
    @total = 0
    @items = []
    @discount = discount
    @quantity = quantity
    @transactions = []
  end 
  
  def add_item(title, price, quantity = 1)
    @transactions << price
    @total += (price * quantity)
    i = quantity
    until i == 0 do
      @items << title
      i -= 1
    end
  end
  
  def apply_discount
    if @discount == 0 || @discount == nil
      return "There is no discount to apply."
    else
      @total -= (@total * @discount/100) 
      return "After the discount, the total comes to $#{@total}."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @transactions.pop
  end
  
end
