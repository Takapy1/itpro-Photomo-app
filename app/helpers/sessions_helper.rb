module SessionsHelper

  #ログインしているphotographer
  def current_user
    if session[:status] == "photographer"
      @current_user ||= Photographer.find_by(id: session[:user_id])
    elsif session[:status] == "viewer"
      @current_user ||= Viewer.find_by(id: session[:user_id])
    end
  end

  def logged_in?
    !current_user.nil? #current_userがnilかどうか
  end
end
