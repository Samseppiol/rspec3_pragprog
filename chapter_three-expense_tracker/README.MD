### Here I will take notes for the application build and record documentation

##### Building an expense tracker using sinatra as the framework because it is lightweight.


> Installed bundler, init a gemfile, install gems :<br>
> gem 'rspec', '3.6.0'<br>
> gem 'coderay', '1.1.1'<br>
> gem 'rack-test', '0.6.3'<br>
> gem 'sinatra', '2.0.0'

> Also need to add ENV['RACK_ENV'] = 'test'<br>
to the spec helper file.

> Setting the RACK_ENV environment variable to test switches on test friendly behaviour in your web framework. Sinatra normally swallows exceptions and renders a “500 Internal Server Error” response. With this variable set, Sinatra will instead allow errors to bubble up to your test framework.
