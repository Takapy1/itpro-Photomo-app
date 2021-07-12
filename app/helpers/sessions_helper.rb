module SessionsHelper

  #ログインしているphotographer
  def current_photographer
    if session[:user_id]
      @current_photographer ||= Photographer.find_by(id: session[:user_id])
    end
  end

  def logged_in?
    !current_photographer.nil? #current_userがnilかどうか
  end

end
