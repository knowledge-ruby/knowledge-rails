# Knowledge x Rails

This project contains all utilities to easily integrate [knowledge](https://github.com/knowledge-ruby/knowledge) in your Rails app.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'knowledge-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install knowledge-rails

## Usage

For more advanced documentation, please have a look at [knowledge](https://github.com/knowledge-ruby/knowledge)'s doc.


Using `knowledge-rails` will make `knowledge` set your configuration variables directly in `Rails.application.config`.

i.e:

```ruby
# Instanciate your learner
knowledge = Knowledge::Learner.new

# Make it use the default adapter which is the key/value one
knowledge.use(name: :default)

# Define your config vars
knowledge.variables = { key: :value }

# Gather
knowledge.gather!

# You can now access to your config via Rails.application.config
Rails.application.config.key # => "value"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/knowledge-ruby/knowledge-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Code of Conduct

Everyone interacting in the Knowledge::Rails project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/knowledge-ruby/knowledge-rails/blob/master/CODE_OF_CONDUCT.md).

## Licensing

This project is licensed under [GPLv3+](https://www.gnu.org/licenses/gpl-3.0.en.html).

You can find it in LICENSE.md file.