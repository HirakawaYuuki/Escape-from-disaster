class User::UsersController < ApplicationController
	before_action :authenticate_user!, only:[:new, :index, :edit, :create, :show, :update, :destroy]
 
 def top

 end

 def create
    @user = User.new(params[:id])
    if @user.save
      flash[:notice] = "EFDへようこそ！！"
      redirect_to user_timeline_path(@user.id)
    else
      render 'users/sign_up'
    end
   
 end

 def show
  	@user = User.find(params[:id])
    if current_user == @user
    else
      flash[:notice] = "他のユーザーページには入れません"
      redirect_to root_path(@user)
    end
 end

 def edit
     @user = User.find(params[:id])
    if current_user == @user
    else
      flash[:notice] = "他のユーザーページには入れません"
      redirect_to user_timelines_path
    end

 end

 def update
  	@user = User.find(params[:id])
	  if @user.update(user_params)
	  	flash[:notice] = "ユーザー情報が変更されました！"
		redirect_to user_timeline_path(current_user)

	  else
	  	render 'users/edit'
	  end
  	
 end

 def destroy
  	@user = User.find(params[:id])
    if current_user = @user.destroy
  	   redirect_to unsubscribe_top_path
  	
 end

  private
  def user_params
  	params.require(:user).permit(:email, :encrypted_password, :family_name, :first_name, :kana_family_name, :kana_first_name, :profile_image)
  	
  end

  def timeline_params
  	params.require(:timeline).permit(:image, :timeline, :created_at)
  	
  end
  def place_params
      params.require(:place).permit(:prefecture, :address_city, :address_street, :address)
  end
end
