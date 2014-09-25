# CurrencyConverter:
# ✔️Should be created with a Hash of currency codes to conversion rates (see below)
# ✔️At first, just make this work with two currency codes and conversation rates, with one rate being 1.0 and the other being the conversation rate (like this: {USD: 1.0, EUR: 0.74})
# ✔️Should be able to take a Currency object and a requested currency code that is the same currency code as the Currency object's and return a Currency object equal to the one passed in (that is, currency_converter.convert(Currency.new(1, :USD)) == Currency.new(1, :USD))
# Should be able to take a Currency object that has one currency code it knows and a requested currency code and return a new Currency object with the right amount in the new currency code
# Should be able to be created with a Hash of three or more currency codes and conversion rates
# Should be able to convert Currency in any currency code it knows about to Currency in any other currency code it knows about.
# Should raise an UnknownCurrencyCodeError when you try to convert from or to a currency code it doesn't know about.

require "minitest/autorun"
require "currency_converter"


class CurrencyConverterTest < MiniTest::Unit::TestCase
  def test_should_be_created_with_a_Hash_of_currency_codes_to_conversion_rates
    assert CurrencyConverter.new({USD: 1.0, EUR: 0.74}).currencies.class == {}.class
  end

  def test_should_be_able_to_take_a_Currency_object_and_a_requested_currency_code_that_is_the_same_currency_code_as_the_Currency_objects_and_return_a_Currency_object_equal_to_the_one_passed_in
    cc = CurrencyConverter.new({USD: 1.0, EUR: 0.74})
    clone = cc.convert(Currency.new(2,"EUR"), "EUR")
    assert clone == Currency.new(2,"EUR")
  end

  def test_should_be_able_to_take_a_Currency_object_that_has_one_currency_code_it_knows_and_a_requested_currency_code_and_return_a_new_Currency_object_with_the_right_amount_in_the_new_currency_code
    cc = CurrencyConverter.new({USD: 1.0, EUR: 0.74})
    conv = cc.convert(Currency.new(1.0,"USD"), "EUR")
    assert conv == Currency.new(0.74,"EUR")
  end


end
