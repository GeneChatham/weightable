class WeighInsController < ApplicationController

  def show
    @weigh_in = Weigh_in.find(params[:id])
  end

  def index
    @weigh_ins = Weigh_in.all
  end

  def new
    @weigh_in = Weigh_in.new
  end

  def create
    @weigh_in = Weigh_in.new(weigh_in_params)
    @weigh_in.save
    redirect_to root_path
  end

  def edit
    @weigh_in = Weigh_in.find(params[:id])
  end

  def update
    @weigh_in = Weigh_in.find(params[:id])
    @weigh_in.update(weigh_in_params)
    redirect_to root_path
  end

  def destroy
    @weigh_in = Weigh_in.find(params[:id])
    @weigh_in.destroy
    redirect_to root_path
  end
  
  private
  def weigh_in_params
    params.require(:weigh_in).permit(:user_id, :weightpic, :description, :currentweight)

  end
end
