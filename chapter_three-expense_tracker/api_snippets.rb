class API < Sinatra::Base 
	def initialize(ledger:) 
		@ledger = ledger
		super() #Initialization from Sinatra
	end
end 

app = API.new(ledger: Ledger.new)
