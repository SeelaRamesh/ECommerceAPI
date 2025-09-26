class UsersController < 
    
    before_action :doorkeeper_authorize! 

    def index 
        @users = policy_scope(User)
        render json:@users 
    end

    def show
        @user


    end



end
