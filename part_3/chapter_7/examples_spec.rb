
# Sounds awkward using describe, context is a much better option
RSpec.describe 'A kettle of water' do
  describe 'when boiling' do 
    it 'can make tea'
    it 'can make coffee'
  end 
end 

# Sounds much better
RSpec.describe 'A kettle of water' do
  context 'when boiling' do 
    it 'can make tea'
    it 'can make coffee'
  end 
end 


#  using it doesn't sound right in this situation
RSpec.describe PhoneNumberParser, 'parses phone numbers' do
  it 'in xxx-xxx-xxxx form'
  it 'in (xxx) xxx-xxxx form'
end

# Instead we use example, sounds much better 
RSpec.describe PhoneNumberParser, 'parses phone numbers' do
  example 'in xxx-xxx-xxxx form'
  example 'in (xxx) xxx-xxxx form'
end

# Or using the specify alias. 

RSpec.describe 'Deprecations' do 
  specify 'MyGem.config is deprecated in favour of MyGem.configure'
  specify 'MyGem.run is deprecated in favour of MyGem.start'
end 