class WeighInsController < ApplicationController

  before_action :set_weigh_in, only: [:show, :edit, :update, :destroy]

  def create
    @user = User.find(params[:user_id])
    @weigh_in = @user.weigh_ins.new(weigh_in_params)
    if @weigh_in.save
      redirect_to @weigh_in.user, notice: 'Weigh-In was successfully created.'
    else
      redirect_to @weigh_in.user, alert: 'Weigh-In was not successfully created'
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @weigh_in = @user.weigh_ins.new(weigh_in_params)
  end

  def update
    @user = User.find(params[:user_id])
    @weigh_in = @user.weigh_ins.new(weigh_in_params)
    if @weigh_in.update
      redirect_to @weigh_in.user, notice: 'Weigh-In was successfully created.'
    else
      redirect_to @weigh_in.user, alert: 'Weigh-In was not successfully created'
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @weigh_in = @user.weigh_ins.new(weigh_in_params)
    @weigh_in.destroy
    redirect_to root_path
  end
  
  private

  def set_weigh_in
      @weigh_in = WeighIn.find(params[:id])
  end

  def weigh_in_params
    params.require(:weigh_in).permit(:user_id, :weightpic, :description, :currentweight)
  end
end
