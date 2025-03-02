class ApplicationController < ActionController::API
        include DeviseTokenAuth::Concerns::SetUserByToken
    before_action :ensure_json_request
  
    private
  
    def ensure_json_request
      return if request.headers["Accept"] =~ /vnd\.api\+json/
      
      head :not_acceptable
    end
end
  