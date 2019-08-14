class User::UsersController < ApplicationController
	before_action :authenticate_user!, only:[:new, :index, :edit, :create, :show, :new, :update, :destroy]
 def top

 end



  def show
  	@user = User.find(params[:id])
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
	  if @user.update(user_params)
	  	flash[:notice] = "ユーザー情報が変更されました！"
		redirect_to user_timeline_path(@user.id)

	  else
	  	render 'users/edit'
	  end
  	
  end

  def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	redirect_to 'unsubscribe/top'
  	flash[:notice] = "退会しました"
  	
  end

  private
  def user_params
  	params.require(:user).permit(:email, :encrypted_password, :family_name, :first_name, :kana_family_name, :kana_first_name, :profile_image_id)
  	
  end

  def timeline_params
  	params.require(:timeline).permit(:image_id, :timeline, :created_at)
  	
  end
end
