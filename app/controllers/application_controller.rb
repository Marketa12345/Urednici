class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  protected

  #def configure_permitted_parameters
  #  devise_parameter_sanitizer.for(:sign_up) << :username
  #end
    def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :email, :password, :remember_me) }

    #This will whitelist all of the parameters that you list. 
    #This is a very good feature to use because we only want to allow the user to sign up and sign in using these parameters.
	#You can optionally add this line to whitelist the account settings.
	
    devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:username, :email, :password, :password_confirmation, :current_password)}
  end
end
