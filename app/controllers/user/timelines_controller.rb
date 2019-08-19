class User::TimelinesController < ApplicationController
	before_action :authenticate_user!, only:[:new, :index, :create, :show, :destroy]
  def index
  	@user = current_user
  	@users = User.all.includes(:timelines)
  	@timelines = Timeline.all
  	@timelines = Timeline.page(params[:page]).per(10).search(params[:search])
  end

  def create
  	@timeline = Timeline.new(timeline_params)
  	@timeline.user_id = current_user.id
  	if @timeline.save
  	   flash[:notice] = "投稿完了！"
  	   redirect_to user_timeline_path(current_user)
  	else
  		render 'user/timelines/new'
  	end
  end

  def show
    @user = User.find(params[:id])
    @timeline = Timeline.new
	@timeline = Timeline.where(user_id: @user.id)
	#@timeline = Timeline.find(params[:id])
	@timeline = Timeline.page(params[:page]).per(10)
  end

  def new
    @timeline = Timeline.new

  end

  def destroy
  	@timeline = Timeline.find(params[:id])
  	@timeline.destroy
  	redirect_to user_timeline_path(current_user) 	
  end

  private
  def user_params
  	params.require(:user).permit(:email, :encrypted_password, :family_name, :first_name, :kana_family_name, :kana_first_name, :profile_image)
  	
  end

  def timeline_params
  	params.require(:timeline).permit(:image, :timeline)
  	
  end
end
