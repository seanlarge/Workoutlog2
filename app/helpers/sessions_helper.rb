module SessionsHelper

    def current_user
      remember_token = Athlete.hash(cookies[:remember_token])
      @current_user ||= Athlete.find_by(remember_token: remember_token)
    end

    def current_user=(athlete)
      @current_user = athlete
    end

    def current_user?(athlete)
      current_user == athlete
    end

    def signed_in?
      current_user.present?
    end

    def sign_in(athlete)
      remember_token = Athlete.new_remember_token
      cookies.permanent[:remember_token] = remember_token
      athlete.update_attribute(:remember_token, Athlete.hash(remember_token))
      self.current_user = athlete
    end

    def sign_out
      current_user.update_attribute(:remember_token, Athlete.hash(Athlete.new_remember_token))
      cookies.delete(:remember_token)
      self.current_user = nil
    end

    # Location Management Methods

    def store_location
      if request.get?
          session[:return_to] = request.url
      end
    end

    def redirect_back_or(default)
      redirect_to(session[:return_to] || default)
      session.delete(:return_to)
    end

    # security method
    def require_signin
      if !signed_in?
          store_location
          flash[:notice] = "Please Sign In"
          redirect_to signin_url
      end
    end
end
