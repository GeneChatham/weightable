class FriendshipsController < ApplicationController

  def new
    @friendship = Friendship.new
  end


  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])

    if @friendship.save
      redirect_to root_url, :notice => "You have a new Friend!"
    else
      redirect_to root_url, :error => "Friendship FAIL!"
    end
  end

  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    redirect_to current_user, :notice => "Friendship OVER!"
  end


end

