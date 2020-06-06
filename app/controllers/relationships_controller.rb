class RelationshipsController < ApplicationController
  def create
    @user = User.find(params[:relationship][:followed_id])
    current_user.follow!(@user)
    redirect_to user_path(user)
  end  

  def destroy
    @user = User.find(params[:relationship][:followed_id])
    current_user.unfollow!(@user)
    redirect_to user_path(user)
  end  
  
end
