class FriendshipsController < ApplicationController

  def new
    @friendship = Friendship.new
  end


  def create
    @friendship1 = Friendship.new
    @friendship1.user_id = params[:user_id]
    @friendship1.friend_id = params[:friend_id]
    @friendship2 = Friendship.new
    @friendship2.user_id = params[:friend_id]
    @friendship2.friend_id = params[:user_id]

    if @friendship1.save && @friendship2.save
      redirect_to root_url, :notice => "Successfully created friendship."
    else
      render :action => 'new'
    end
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    @friendship.destroy
    redirect_to root_url, :notice => "Successfully destroyed friendship."
  end


  # private

  # def friendship_params
  #   params.require(:friendship).permit(:user_id, :friend_id)
  # end

end

