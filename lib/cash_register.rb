class CashRegister

  attr_accessor :total, :items

  def initialize (discount=0)
    @total=0
    @discount=discount
    @items=[]
    def discount
      @discount
    end
  end



  def add_item (title,price,quantity=0)
    if quantity > 0
      self.total += price*quantity
    else
      self.total += price
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

  def items
  end


end
