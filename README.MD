Going through Effective Testing with RSpec 3, Pragmatic Programmers.
This is co authored by the chief maintainer of rspec since 2012 so I am expecting good things.
https://pragprog.com/book/rspec3/effective-testing-with-rspec-3

## Notes:

##### Tests vs Specs vs Examples
> A test validates that bit of code is working properly.

> A spec describes the desired behaviour of a bit of code

> An example shows how a particular API is intended to be used.

##### Three Rspec Methods:
> Rspec.describe creates an example group (set of related tests)

> it creates an example (individual test)

> Expect verifies an expected outcome (assertion)

##### Reducing Duplication
> RSpec hooks run automatically at specific times during testing

> Helper methods are regular Ruby methods; you control when these run

> RSpec’s let construct initializes data on demand

## More Notes:
> Context is just an alias for describe. Use context for phrases that modify the object we’re testing.

##### Gem Coderay will highlight syntax when your tests run
> gem install coderay -v 1.1.1

##### Identifying slow tests
> run rspec --profile and then the number of slowest tests you want to identify. E.g

> Top 2 slowest examples (1.01 seconds, 61.7% of total time):<br>
  The ruby sleep method can sleep for 0.5 second<br>
    0.60543 seconds ./slow_spec.rb:6<br>
  The ruby sleep method can sleep for 0.4 second<br>
    0.40194 seconds ./slow_spec.rb:5

##### Narrowing down tests:
> rspec spec/unit # Load *_spec.rb in this dir and subdirs<br>
> rspec spec/unit/specific_spec.rb # Load just one spec file<br>
> rspec spec/unit spec/smoke # Load more than one directory<br>
> rspec spec/unit spec/foo_spec.rb # Or mix and match files and directories<br>

##### Only Failures

> To run only failures use the command rspec --only-failures

> However configuration must be setup before hand:

> RSpec.configure do |config|<br> config.example_status_persistence_file_path = 'spec/examples.txt'<br>
end


##### Focusing Specific Examples
Save time by marking them as focused. Simply add an 'f' to the beginning of the Rspec method name:
> context becomes fcontext

> it becomes fit

> describe becomes fdescribe

> Must also add this to the configuration.

> config.filter_run_when_matching(focus: true)

##### Starting with a description
> To avoid trying to do to many features at once you can simply just write down the description of a test and no output. When running rspec it will simply say there are pending tests.

##### Pending tests
> Same as description if you want to write down what the test should do you can simply write pending before hand.
