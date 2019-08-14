class User::TimelinesController < ApplicationController
	before_action :authenticate_user!, only:[:new, :index, :create, :show, :new, :destroy]
  def index
  	@user = current_user
  	@timelines = Timeline.all
  end

  def create
  	@timeline = Timeline.new(timeline_params)
  	@timeline.save
  	redirect_to user_timelines_path
  	
  end
  def show
		@user = User.find(params[:id])
		@timeline = Timeline.find(params[:id])
		@user = @timeline.user.id
		#@timeline = @user.timeline
  end

  def new
  end

  private
  def user_params
  	params.require(:user).permit(:email, :encrypted_password, :family_name, :first_name, :kana_family_name, :kana_first_name, :profile_image_id)
  	
  end

  def timeline_params
  	params.require(:timeline).permit(:image_id, :timeline, :created_at)
  	
  end
end
