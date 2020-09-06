class ApplicationController < ActionController::Base

    private
    
    def model_params(model_name, *args)
        params.require(model_name).permit(*args)
    end

    
end
