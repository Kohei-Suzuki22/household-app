class SessionsController < ApplicationController
  
  skip_before_action :login_required
  
  def new
  end
  
  def create
    @user = User.find_by(email: session_params[:email].downcase)
    
    if @user&.authenticate(session_params[:password])
      session[:user_id] = @user.id 
      flash[:success] = "ログインしました。"
      redirect_to root_url
    else 
      flash.now[:warning] = "ログインに失敗しました。"
      render :new 
    end 
    
  end 
  
  def destroy 
    fix_guest_user if current_user == User.find(2)
    reset_session
    flash[:success] = "ログアウトしました。"
    redirect_to root_url
  end 
  
  private 
  
  def session_params
    params.require(:session).permit(:email, :password)
  end
  
  def fix_guest_user 
    guest = User.find(2)
    guest.update!(name:"guest", email:"guest@ruby.ruby",password:"password",password_confirmation:"password")
    guest.items.destroy_all
  end
  
  
end
