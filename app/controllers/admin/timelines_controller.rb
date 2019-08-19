class Admin::TimelinesController < ApplicationController
	before_action :authenticate_admin!
     layout 'admin'
  def index
  	@timelines = Timeline.all
  	@timelines = Timeline.page(params[:page]).per(10).search(params[:search])
  end

  def show
  	@user = User.find(params[:id])
  	@timeline = Timeline.new
	@timeline = Timeline.where(user_id: @user.id)
	#@timeline = Timeline.find(params[:id])
	@timeline = Timeline.page(params[:page]).per(10)
  	
  end

  def new
  end
  def destroy
  	@timeline = Timeline.find(params[:id])
  	@timeline.destroy
  	redirect_to admin_timelines_path
  end
  private
  def user_params
  	params.require(:user).permit(:email, :encrypted_password, :family_name, :first_name, :kana_family_name, :kana_first_name, :profile_image)
  	
  end

  def timeline_params
  	params.require(:timeline).permit(:image, :timeline)
  	
  end
end
