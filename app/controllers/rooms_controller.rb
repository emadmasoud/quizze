class RoomsController < ApplicationController
  def index
    @rooms = Room.order('created_at desc').paginate(:per_page => 5, :page => params[:page])
  end

  def new
    @room = Room.new
  end

  def create
    Room.create(room_params)
    redirect_to root_path
  end

  private

  def room_params
    params.require(:room).permit(:department, :building, :room_num, :description)
  end

end
