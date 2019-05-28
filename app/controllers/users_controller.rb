class UsersController < ApplicationController
  
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  before_action :defend_guest_from_destroy, only: [:destroy]
  skip_before_action :login_required, only: [:new, :create]
  
  
  
  def show
  end

  def new
    @user = User.new
  end
  
  def create 
    @user = User.new(user_params)
    
    if @user.save 
      flash[:success] = "ユーザ「#{@user.name}」を登録しました。ログインしてください。"
      redirect_to login_url
    else 
      render :new 
    end 
    
  end

  def edit
  end
  
  def update 
    
    if @user.update(user_params)
      flash[:success] = "ユーザデータを更新しました。"
      redirect_to @user 
    else 
      flash.now[:danger] = "ユーザデータの更新に失敗しました。"
      render :edit
    end 
    
  end 
  
  def destroy
    @user.destroy 
    flash[:success] = "ユーザ「#{@user.name}」のデータを全て削除しました。"
    redirect_to root_url
  end
  
  private 
  
  def user_params 
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :budget)
  end
  
  def find_user
    @user = User.find(params[:id])
    redirect_to root_url unless @user == current_user
  end 
  
  def defend_guest_from_destroy 
    redirect_to current_user if current_user == User.find(2)
  end
  
end
