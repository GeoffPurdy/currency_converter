# Currency:
# ✔
# ✔ Should be created with an amount and a currency code
# ✔ Should equal another Currency object with the same amount and currency code
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
    assert (cur.amount && cur.currency_code)
  end

  def test_should_equal_another_currency_object_with_the_same_amount_and_currency_code
    c1 = Currency.new(2, "USD")
    c2 = Currency.new(2, "USD")
    assert c1 == c2
  end

  def test_should_be_able_to_be_added_to_another_currency_object_with_the_same_currency_code
    c1 = Currency.new(1, "USD")
    c2 = Currency.new(2, "USD")
    c3 = c1 + c2

    assert 3 == c3.amount

  end
end
