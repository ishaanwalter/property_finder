class ApplicationController < ActionController::Base
	  LoadAndAuthorizeResource

	 before_action :configure_permitted_parameters, if: :devise_controller?

    protected
        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:profile_picture, :email, :first_name, :last_name, :mobile , :city, :country, :license_no ,:password])
            devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:profile_picture, :email, :first_name, :last_name, :mobile , :city, :country, :license_no, :current_password)}
        end

    

 #    def after_sign_in_path_for(resource)
 #    	include LoadAndAuthorizeResource
  	

	# end
	 

end
