class ApplicationController < ActionController::Base
     include Pundit

     before_action :authenticate_user!


	protect_from_forgery with: :exception

	before_action :configure_permitted_parameters, if: :devise_controller?

     def after_sign_in_path_for(resource)
          user_plans_path(current_user) # your path
     end

     protected

          def configure_permitted_parameters
               devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name,:type, :email, :password)}

               devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name,:type, :email, :password, :current_password)}
          end
end
