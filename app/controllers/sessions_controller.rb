class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    @user = User.find_by(email: session_params[:email].downcase)
    
    if @user&.authenticate(session_params[:password])
      session[:user_id] = @user.id 
      flash[:success] = "ログインしました。"
    else 
      flash.now[:warning] = "ログインに失敗しました。"
      render :new 
    end 
    
  end 
  
  def destroy 
    reset_session
    flash[:success] = "ログアウトしました。"
    redirect_to root_url
  end 
  
  private 
  
  def session_params
    params.require(:session).permit(:email, :password)
  end
end
