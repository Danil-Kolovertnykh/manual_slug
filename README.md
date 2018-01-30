[![Gem Version](https://badge.fury.io/rb/manual_slug.svg)](http://badge.fury.io/rb/manual_slug)

# ManualSlug

Allows to set slug field for models manually

Supports [FriendlyID](https://github.com/norman/friendly_id) and [Mongoid Slug](https://github.com/mongoid/mongoid-slug)

This is an extraction from [RocketCMS](https://github.com/rs-pro/rocket_cms)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'manual_slug'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install manual_slug

## Usage

```ruby
# in your model, insted of regular slug code
include ManualSlug
manual_slug :report_slug

# or
manual_slug :report_slug, options_for_your_gem
```

Then use ```text_slug``` instead of ```slug``` when you need to provide your users the ability to edit slugs.

Also supports Rails Admin and ActiveAdmin.

## Contributing

1. Fork it ( https://github.com/rs-pro/manual_slug/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
