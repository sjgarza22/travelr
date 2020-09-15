class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :authenticate_user!

    def after_sign_in_path_for(resource)
        request.env['omniauth.origin'] || trips_path
    end
    
    private
    
    def model_params(model_name, *args)
        params.require(model_name).permit(*args)
    end


end
