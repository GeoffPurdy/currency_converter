# Currency:
# ✔
# Should be created with an amount and a currency code
# Should equal another Currency object with the same amount and currency code
# Should be able to be added to another Currency object with the same currency code
# Should be able to be subtracted by another Currency object with the same currency code
# Should raise a DifferentCurrencyCodeError when you try to add or subtract two Currency objects with different currency codes.
# Should be able to be multiplied by a Fixnum or Float and return a Currency object


class Currency
  attr_accessor :amount
  attr_accessor :currency_code
  
  def initialize(amt = 1, cur_code = "USD")
    @amount = amt
    @currency_code = cur_code
  end
end
