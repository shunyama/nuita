class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    # strong parameters
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:handle_name, :screen_name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:handle_name, :screen_name])
    end
end