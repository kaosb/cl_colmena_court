class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_filter :authenticate_user!

	layout :layout_by_resource

	protected

	def layout_by_resource
		if devise_controller? #&& resource_name == :user && action_name == "new"
			"login"
		else
			"application"
		end
	end
	
end
