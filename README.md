# Linode API Rubygem

**This gem is currently in "work in progress" state – please use it carefully because things are bound to break until we hit stable release**

[![Build Status](https://github.com/bilalbudhani/linode.rb/workflows/Tests/badge.svg)](https://github.com/bilalbudhani/linode.rb/actions)

The easiest and most complete rubygem for [Linode](https://www.linode.com). Currently supports [API v4](https://www.linode.com/docs/api).

This gem is inspired by [Vultr](https://github.com/excid3/vultr.rb) fork by [excid3](https://github.com/excid3)

## Installation

Add this line to your application's Gemfile:

    gem 'linode', github: "bilalbudhani/linode.rb"

And then execute:

    $ bundle

## Usage

To access the API, you'll need to create a `Linode::Client` and pass in your API key.

```ruby
client = Linode::Client.new(api_key: ENV["LINODE_API_KEY"])
```

## Contributing

1. Fork it ( https://github.com/bilalbudhani/linode.rb/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

When adding methods, add to the list of DEFINITIONS in lib/linode.rb. Additionally, write a spec and add it to the list in the README.
