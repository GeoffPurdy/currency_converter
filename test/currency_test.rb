# Currency:
# ✔
# ✔ Should be created with an amount and a currency code
# ✔ Should equal another Currency object with the same amount and currency code
# ✔ Should be able to be added to another Currency object with the same currency code
# ✔ Should be able to be subtracted by another Currency object with the same currency code
# ✔ Should raise a DifferentCurrencyCodeError when you try to add or subtract two Currency objects with different currency codes.
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

  def test_should_be_able_to_be_subtracted_from_another_currency_object_with_the_same_currency_code
    c1 = Currency.new(1, "USD")
    c2 = Currency.new(2, "USD")
    c3 = c2 - c1
    assert 1 == c3.amount
  end

  def test_should_raise_a_DifferentCurrencyCodeError_when_you_try_to_add_or_subtract_two_Currency_objects_with_different_currency_codes
    c1 = Currency.new(1, "USD")
    c2 = Currency.new(2, "EUR")
    assert_raises(DifferentCurrencyCodeError) do c2 - c1 end
  end

  def test_should_be_able_to_be_multiplied_by_a_Fixnum_or_Float_and_return_a_Currency_object
    c = Currency.new(2, "EUR")
    f = 1.1
    i = 3.0
    assert ((c * f).class == Currency.new(1,"USD").class && (c * i).class == Currency.new(1,"USD").class)
  end
end
