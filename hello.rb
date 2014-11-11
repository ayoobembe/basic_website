require 'sinatra'

#Are these models, views, or controllers?
get '/' do 
	@name = %w(Amigo Oscar Viking).sample
	erb :index   #This is a view. Called view cause it's what client sees.
end

get '/secret' do 
	'This is a secret page'
end

get '/hello' do  
#expects params passed as /hello?name=James
	@visitor = params[:name]
	erb :index
end