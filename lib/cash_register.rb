class CashRegister

  attr_accessor :total

  def initialize
    @total = 0.0
  end

  def purchase(price)
    @total += price.to_f
  end

  def pay(amount_paid)
    change = amount_paid - @total
  end

end
