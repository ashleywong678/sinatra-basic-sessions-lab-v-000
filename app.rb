require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    # set :session_secret, "secret"
  end
  
  get '/' do
    erb :index
  end
  
  post '/checkout' do
    # binding.pry
    @cart= params
    @session['item']=params['item'].first.last
    @session= session
  end
  
end



{"session_id"=>"468b07f2c789131dbe304c07d0479a5478dbec32088efb21b9d245ee391f891c", 
"csrf"=>"chr/+3+1efA6wW7KDabsLjuMT9vcIVehiu5nGSMzQ5M=", 
"tracking"=>{
  "HTTP_USER_AGENT"=>"da39a3ee5e6b4b0d3255bfef95601890afd80709"}
}