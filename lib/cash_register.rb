class CashRegister
  
  attr_accessor :items, :discount, :total, :last_transaction
  
  def initialize(discount=0)
    @total = 0
    @items = []
    @discount = discount
  end 
  
  def add_item(title, price, quantity = 1)
    self.total =+ price * quantity
    quantity.times do
      items << title
    end
    self
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
