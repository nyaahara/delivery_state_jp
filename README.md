# DeliveryStateJp

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/delivery_state_jp`. To experiment with that code, run `bin/console` for an interactive prompt.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'delivery_state_jp'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install delivery_state_jp

## Usage

```
require 'delivery_state_jp'
=> true

DeliveryStateJp::Yamato.delivery_state(number: 'xxxx-xxxx-xxxx-xxxx')
=> "配達完了"

DeliveryStateJp::Sagawa.delivery_state(number: 'xxxx-xxxx-xxxx-xxxx')
=> "⇒配達完了"

DeliveryStateJp::Yuusei.delivery_state(number: 'xxxx-xxxx-xxxx-xxxx')
=> "お届け先にお届け済み"

irb(main):007:0> DeliveryStateJp::Seino.delivery_state(number: 'xxxx-xxxx-xxxx-xxxx')
=> "配達済みです"
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

