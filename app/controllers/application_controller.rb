class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?

	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:family_name, :first_name, :kana_family_name, :kana_first_name, :email])
		devise_parameter_sanitizer.permit(:sign_in, keys: [:family_name, :first_name])

	end

	private
	def  after_sign_in_path_for(resourse)
		case resourse
	    when User

		 user_timeline_path(current_user.id)

	    when Admin

	     admin_users_top_path

	    end
		
	end
end
