class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
 
#********* reroute path after login  **************
#                    v
  #   def after_sign_in_path_for(resource)
  #   sandwiches_path
  # end

  protected
  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :location])
  end
  
end
