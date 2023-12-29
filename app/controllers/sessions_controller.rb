class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: session_params[:username])

    if user.present? && user.authenticate(session_params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Successfully signed in!"
    else
      flash[:alert] = "Wrong username or password"
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "You have logged out"
  end

  private
    def session_params
      params.require(:session).permit(:username, :password)
    end
end
