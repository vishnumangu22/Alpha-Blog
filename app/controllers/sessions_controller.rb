class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email]&.downcase)

    if user&.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:notice] = "Logged in successfully"
      redirect_to user
    else
      flash.now[:alert] = "Incorrect email or password"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = "Logged out successfully"
    redirect_to root_path, status: :see_other
  end

end
