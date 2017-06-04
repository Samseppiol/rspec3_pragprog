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
