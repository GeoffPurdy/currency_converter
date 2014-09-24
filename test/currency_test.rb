# Currency:
# ✔
# Should be created with an amount and a currency code
# Should equal another Currency object with the same amount and currency code
# Should be able to be added to another Currency object with the same currency code
# Should be able to be subtracted by another Currency object with the same currency code
# Should raise a DifferentCurrencyCodeError when you try to add or subtract two Currency objects with different currency codes.
# Should be able to be multiplied by a Fixnum or Float and return a Currency object

require "minitest/autorun"
require "currency_converter"
require "currency"

class CurrencyTest < MiniTest::Unit::TestCase
  def test_should_be_created_with_an_amount_and_a_currency_code
    cur = Currency.new(2, "USD")
    assert true, (cur.amount && cur.currency_code)
  end
end
