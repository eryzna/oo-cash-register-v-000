class CashRegister
  attr_accessor :total
  def initialize (discount=0)
    @total=0
    @discount=discount
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
    self.total.to_f*discount/100.to_f
  end


end
