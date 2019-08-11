class User::TimelinesController < ApplicationController
  def index
  	@user = User.all
  #	@user = User.find(params[:id])
  end

  
  def show
		@user = User.find(params[:id])
  end

  def new
  end

  private
  def user_params
  	params.require(:user).permit(:email, :encrypted_password, :family_name, :first_name, :kana_family_name, :kana_first_name)
  	
  end

  def timeline_params
  	params.require(:timeline).permit(:image_id, :timeline)
  	
  end
end
