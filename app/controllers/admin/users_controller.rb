class Admin::UsersController < ApplicationController
	before_action :authenticate_admin!
	layout 'admin'
  def top

  end

  def index
  	@users = User.all
  	@users =User.page(params[:page]).per(20).search(params[:search])
  end


  def edit
  	@user = User.find(params[:id])

  end
  def update
  	@user = User.find(params[:id])
	  if @user.update(user_params)
	  	flash[:notice] = "ユーザー情報が変更されました！"
		redirect_to admin_timeline_path(@user.id)
	  end
  def destroy

  	@user = User.find(params[:id])
  	@user.destroy
  	redirect_to 'admin/users/top'
  	
  end
  	
  end

  private
  def user_params
  	params.require(:user).permit(:email, :encrypted_password, :family_name, :first_name, :kana_family_name, :kana_first_name, :profile_image)
  	
  end

  def timeline_params
  	params.require(:timeline).permit(:image, :timeline)
  	
  end
end
