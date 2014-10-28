
class SessionsController < ApplicationController
  skip_before_action :require_signin, only: [:new, :create]
    def new
    end

    def create
      #find athlete by their email
      athlete = Athlete.find_by(email: params[:session][:email].downcase)

      #test if the Athlete was found AND authenticates
      if athlete && athlete.authenticate(params[:session][:password])
         # TODO sign in the athlete
         sign_in(athlete)
         redirect_to show_athlete_path
      else
          flash[:error] = "Invalid email/password"
          redirect_to new_session_path
      end
    end

    def destroy
      sign_out
      redirect_to root_url
    end
end
