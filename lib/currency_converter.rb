# CurrencyConverter:
# Should be created with a Hash of currency codes to conversion rates (see below)
# At first, just make this work with two currency codes and conversation rates, with one rate being 1.0 and the other being the conversation rate (like this: {USD: 1.0, EUR: 0.74})
# Should be able to take a Currency object and a requested currency code that is the same currency code as the Currency object's and return a Currency object equal to the one passed in (that is, currency_converter.convert(Currency.new(1, :USD)) == Currency.new(1, :USD))
# Should be able to take a Currency object that has one currency code it knows and a requested currency code and return a new Currency object with the right amount in the new currency code
# Should be able to be created with a Hash of three or more currency codes and conversion rates
# Should be able to convert Currency in any currency code it knows about to Currency in any other currency code it knows about.
# Should raise an UnknownCurrencyCodeError when you try to convert from or to a currency code it doesn't know about.

class CurrencyConverter
  attr_reader :currencies
  def initialize(hash)
    @currencies = hash
  end

  def convert(currency, new_code)
    if(currency.currency_code == new_code)
      return Currency.new(currency.amount, new_code)
    elsif @currencies[currency.currency_code] && @currencies[new_code] # both in hash
      return Currency.new(currency.amount * @currencies[new_code],new_code)
    else
    end
  end
end
