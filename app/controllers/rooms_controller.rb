# coding: utf-8

class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)

    if @room.save
      redirect_to @room, notice: 'Room was successfully saved!'
    else
      render action: 'new'
    end

  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def room_params
    params.require(:room).permit(:name, :description)
  end
end
