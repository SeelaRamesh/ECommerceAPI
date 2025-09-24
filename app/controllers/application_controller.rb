class ApplicationController < ActionController::API

    include Pundit::Authorization


    rescue_from Pundit::NotAuthorizedError ,with: :not_authorized_request?


    after_action :validate_user , except: :index ,unless: :devise_controller?
    after_action :validate_policy,only: :index , unless: :devise_controller?



    private

    def current_user
        current_user ||= User.find_by(doorkeeper_token.resource_owner_id)  if doorkeeper_token
    end

    def not_authorized_request?
        render json:{messsge:"You are not authorized to Perform that action."}
    end

end
