class CashRegister

  attr_accessor :total, :items, :last_transaction, :discount


  def initialize (discount=0)
    @total=0
    @discount=discount
    @items=[]
  end


  def add_item (title,price,quantity=1)
    #self.last_transaction=amount*quantity

    self.total += price*quantity
    quantity.times do
      items << title
    end

  end

  def apply_discount
    if discount != 0
      self.total=(total-(total*(discount/100.to_f))).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."#self.total = (total * ((100.0 - discount.to_f)/100)).to_i
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end


end
