class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            log_in user
            redirect_to root_path
        else
            flash[:login_user_errors] = "Your account is invalid or not existed"
            redirect_to login_path
        end
    end

    def destroy
        log_out
        redirect_to root_path
    end

end
