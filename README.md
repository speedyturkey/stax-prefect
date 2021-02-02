# Stax::Prefect

[Stax](https://github.com/rlister/stax) is a highly-opionated framework for managing Cloudformation stacks.

Stax::Prefect is highly-opionated framework for managing [Prefect](https://docs.prefect.io/) flows

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'stax-prefect'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install stax-prefect

## Opinions

- you are already using a `stax` project and conforming to those opinions
- your prefect project names conform to `stax` assumptions - one per app/branch


## Usage

In your `Staxfile` add:

```ruby
require 'stax/prefect'
```

and use commands like:

```
bundle exec stax prefect create my-project-main
bundle exec stax prefect run my-flow-name
bundle exec stax prefect run my-flow-name --logs
bundle exec stax prefect run my-flow-name --watch
```

More to come!

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
