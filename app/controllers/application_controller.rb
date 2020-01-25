class ApplicationController < ActionController::Base
  # a code for the CSRF 
  protect_from_forgery with: :exception

  # set the unlogin user can only access sign-up page
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  # set the strong paramater
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end
end





