# Barnes And Noble Bestsellers

The Barnes and Noble Bestsellers gem is a command line interface app that allows users to browse BarnesandNoble.com and view the top 20 bestselling books. Users can choose a book title that catches their eye and view more details about the title. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'barnes_and_noble_bestsellers'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install barnes_and_noble_bestsellers

## Usage

When a user runs barnes_and_noble_bestsellers gem, they are presented with a welcome message and a numbered list of books. The user is also prompted to select a book by number to view more information about the book.

Once a user selects a book, the details are printed to the screen and the user is once again prompted. This time the prompt will ask if the user would like to continue or exit, the user could type 'yes' to continue or 'no' to exit the program.

If the user inputs 'yes' the numbered list of books will be reprinted to the screen and they can select another book. If the user inputs 'no' at the prompt, the program will end and greet the user with a goodbye message. 

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/anthonbrooks/barnes_and_noble_bestsellers. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the BarnesAndNobleBestsellers project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/barnes_and_noble_bestsellers/blob/master/CODE_OF_CONDUCT.md).
