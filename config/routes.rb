Rails.application.routes.draw do

	root to: "case#dashboard"

	devise_for :users
	
	# scope '/api' do
	# 	scope '/v1' do
	# 		# Crawler test
	# 		scope '/case' do
	# 			get '/test' => 'case#test'
	# 			get '/test/:search' => 'case#test'
	# 		end
	# 	end
	# end

	resources :case

end
