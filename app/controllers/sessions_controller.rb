class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user and user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to "/users/#{@user.id}"
    else
      flash[:error] = "Incorrect username or password"
      redirect_to :back
    end
  end
  
  
  def destroy
    reset_session
    redirect_to new_session_path
  end

  def form_params
    params.require(:user_form).permit(:name, :email, :password)
  end

end
