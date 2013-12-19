class MessagesController < ApplicationController

  def create
    @message = Message.create(attributes)
    @room = Room.find_by(id: @message.room.id)
    binding.pry
    if @message.save
      redirect_to room_path(@room), notice: 'success!'
    else
      redirect_to root_url, notice: 'got some error'
    end
  end

  private

  def attributes
    params.require(:message).permit(:username, :body, :room_id)
  end


end
