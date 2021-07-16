class ApplicationController < ActionController::Base
    include SessionsHelper
    before_action :require_login

    private
    def require_login
        if logged_in == false
            redirect_to login_url, flash: {error: "ログインしてください"}
        end
    end

    def logged_in
        if session[:user_id].nil?
            return false
        else
            return true
        end
    end

    
end

