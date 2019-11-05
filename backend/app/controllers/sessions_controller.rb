class SessionsController < ApplicationController
    def new 
        if !logged_in?
            @user = User.new
            json_response(true)
        end
    end

    def create
        @user = User.find_by(name: login_params[:name])
        if @user
            session[:user_id] = @user.id
            json_response(true)
        else 
            @error = "Invalid username"
            json_response(false)
        end
    end

    def destroy
        session.destroy
        json_response(true)
    end

    private
    def login_params
        params.require(:user).permit(:name);
    end
end
