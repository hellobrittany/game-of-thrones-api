Rails.application.routes.draw do

	get '/characters' => 'characters#index'

	namespace :api do

		namespace :v1 do 
			get '/characters' => 'characters#index'
			post '/characters' => 'characters#create'
			get '/characters/:id' => 'characters#show'
			patch '/characters/:id' => 'characters#edit'
			delete '/characters/:id' => 'characters#destroy'
		end


		namespace :v2 do 
			get '/characters' => 'characters#index'
			post '/characters' => 'characters#create'
			get '/characters/:id' => 'characters#show'
			patch '/characters/:id' => 'characters#edit'
			delete '/characters/:id' => 'characters#destroy'
		end
	end	
	
end
