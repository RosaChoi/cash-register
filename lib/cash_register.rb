class CashRegister

  attr_reader :total

  def initialize(total = 0)
    @total = total
  end

  def total=(new_total)
    total = new_total
  end

  def purchase(price)
    @total += price.to_f
  end

  def pay(amount_paid)
    change = amount_paid - @total
  end

end
