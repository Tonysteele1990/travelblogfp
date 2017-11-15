class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  
  before_action :authenticate_user!, only: [:create]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def about_me
	end

	def destinations
	end

 protected

def configure_permitted_parameters
	devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :avatar])
	devise_parameter_sanitizer.permit(:account_update, keys: [:username, :avatar])
end

end