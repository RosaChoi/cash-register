require 'cash_register'

describe CashRegister do
  describe "#total" do
    it 'starts at 0' do
      cash_register = CashRegister.new

      total = cash_register.total

      expect(total).to eq(0)
    end
  end

  describe "#purchase" do
    it "adds to total" do
      cash_register = CashRegister.new
      cash_register.purchase(9.95)

      expect(cash_register.total).to eq(9.95)
    end

    it "adds multiple items to total" do
      cash_register = CashRegister.new
      cash_register.purchase(2.95)
      cash_register.purchase(11.42)
      cash_register.purchase(20.99)
      cash_register.purchase(75.00)

      expect(cash_register.total).to eq(110.36)
    end
  end

  describe "#pay" do
    it "receives an amount and returns change" do
      cash_register = CashRegister.new
      cash_register.purchase(5.25)

      expect(cash_register.pay(10)).to eq(4.75)
    end
  end

end
