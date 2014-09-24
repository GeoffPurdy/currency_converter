# Currency:
# ✔
# Should be created with an amount and a currency code
# Should equal another Currency object with the same amount and currency code
# Should be able to be added to another Currency object with the same currency code
# Should be able to be subtracted by another Currency object with the same currency code
# Should raise a DifferentCurrencyCodeError when you try to add or subtract two Currency objects with different currency codes.
# Should be able to be multiplied by a Fixnum or Float and return a Currency object


class Currency
  include Comparable

  attr_accessor :amount
  attr_accessor :currency_code

  def initialize(amt, cur_code)
    @amount = amt
    @currency_code = cur_code
  end

  def <=>(other)
    if self.currency_code != other.currency_code
      raise DifferentCurrencyCodeError
      return nil
    elsif self.amount < other.amount
      return -1
    elsif self.amount > other.amount
      return 1
    elsif self.amount == other.amount
      return 0
    end
  end


end
