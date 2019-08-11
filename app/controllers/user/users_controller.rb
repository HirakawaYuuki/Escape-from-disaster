class User::UsersController < ApplicationController
 def top

 end

def create
        @user = User.new(params[:id]
  if @user.save
        	flash[:notice] = 'EFDへようこそ！！'
        	redirect_to users_users_path(current_user)
  else
        	render 'users/sign_up'
  end
end

  def show
  end

  def edit
  end

  private
  def user_params
  	params.require(:user).permit(:email, :encrypted_password, :family_name, :first_name, :kana_family_name, :kana_first_name)
  	
  end

  def timeline_params
  	params.require(:timeline).permit(:image_id, :timeline)
  	
  end
end
