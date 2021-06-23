require_relative 'config/environment'
configure do 
  enable :sessions 
  set :session_secret, "secret"

class App < Sinatra::Base
  get "/" do
  	erb :index
	end 
	
	post "/checkout" do 
	  session["secret"] = "SessionName"
  	@session = session
  	erb :index
	end 
	
end 
end 
