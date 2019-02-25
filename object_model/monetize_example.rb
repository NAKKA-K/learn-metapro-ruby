require "monetize"

# Oh no ...
=begin
  [DEPRECATION] You are using the default localization behaviour that will change in the next major release. Find out more - https://github.com/RubyMoney/money#deprecation
  /Users/nakka-k/dev/ruby/metapro/vendor/bundle/ruby/2.3.0/gems/i18n-1.5.3/lib/i18n.rb:311:in `enforce_available_locales!': :en is not a valid locale (I18n::InvalidLocale)
    from /Users/nakka-k/dev/ruby/metapro/vendor/bundle/ruby/2.3.0/gems/i18n-1.5.3/lib/i18n.rb:179:in `translate'
    from /Users/nakka-k/dev/ruby/metapro/vendor/bundle/ruby/2.3.0/gems/money-6.13.2/lib/money/locale_backend/i18n.rb:19:in `lookup'
    from /Users/nakka-k/dev/ruby/metapro/vendor/bundle/ruby/2.3.0/gems/money-6.13.2/lib/money/locale_backend/legacy.rb:15:in `lookup'
    from /Users/nakka-k/dev/ruby/metapro/vendor/bundle/ruby/2.3.0/gems/money-6.13.2/lib/money/money/formatter.rb:366:in `lookup'
    from /Users/nakka-k/dev/ruby/metapro/vendor/bundle/ruby/2.3.0/gems/money-6.13.2/lib/money/money/formatter.rb:238:in `thousands_separator'
    from /Users/nakka-k/dev/ruby/metapro/vendor/bundle/ruby/2.3.0/gems/money-6.13.2/lib/money/money/formatter.rb:333:in `format_whole_part'
    from /Users/nakka-k/dev/ruby/metapro/vendor/bundle/ruby/2.3.0/gems/money-6.13.2/lib/money/money/formatter.rb:257:in `format_number'
    from /Users/nakka-k/dev/ruby/metapro/vendor/bundle/ruby/2.3.0/gems/money-6.13.2/lib/money/money/formatter.rb:232:in `to_s'
    from /Users/nakka-k/dev/ruby/metapro/vendor/bundle/ruby/2.3.0/gems/money-6.13.2/lib/money/money.rb:557:in `format'
    from object_model/monetize_example.rb:4:in `<main>'
=end
I18n.enforce_available_locales = false

bargain_price = Monetize.from_numeric(99, 'USD')
p bargain_price.format # => "$99.00"


# open class method
standard_price = 100.to_money('USD')
p standard_price.format # => "$100.00

