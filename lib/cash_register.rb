class CashRegister

  attr_accessor :total, :discount

  def initialize (discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end

  def add_item(title,price,quantity=1)
    @total += (price * quantity)
    quantity.times do
      @items << title
    end
    @last_transaction = price * quantity

  end

  def apply_discount()
    if discount != 0
      @total -= (@total * (@discount/100.to_f)).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @items.pop
    @total -= @last_transaction 

  end

end
