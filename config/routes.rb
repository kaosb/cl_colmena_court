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

	scope '/api' do
		scope '/estado' do
			get '/:id_caso/:estado_colmena' => 'case#update_estado'
		end
		scope '/situacion' do
			get '/:id_caso/:estado_colmena_situacion' => 'case#update_situacion'
		end
	end

	resources :case

end
