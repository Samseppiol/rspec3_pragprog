#  before hook

RSpec.describe MyApp::Configuration do 
  before(:example) do 
    @original_env = ENV.to_hash
  end 

  after(:example) do 
    ENV.replace(@original_env)
  end
end 

# Around hook 
RSpec.describe MyApp::Configuration do
  around(:example) do |ex| 
    original_env = ENV.to_hash 
    ex.run 
    ENV.replace(original_env)
  end 
end 

# Config the hook if it needs tobe re-used, to save copying and pasting and dry code.
# However they will run for every example in your test suite.
RSpec.configure do |config| 
  config.around(:example) do |ex|
    original_env = ENV.to_hash 
    ex.run 
    ENV.replace(original_env)
  end 
end 

