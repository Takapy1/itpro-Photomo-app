class SessionsController < ApplicationController
  skip_before_action :require_login, {only: [:new, :create]}
  def new
  end

  def create
    attempt_name = params[:name]
    attempt_pw = params[:password]

    if(Photographer.find_by(name: attempt_name) != nil)
      photographer = Photographer.find_by(name: attempt_name)

      if(photographer.authenticate(attempt_pw)!= false)
        session[:user_id] = photographer.id
        redirect_to root_url
      else
        redirect_to login_url
      end

    else
      redirect_to login_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
