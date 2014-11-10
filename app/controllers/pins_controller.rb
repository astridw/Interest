class PinsController < ApplicationController
  def index
    @pins = Pin.all
  end

  def create
    @pin = Pin.new(params.require(:user).permit(:notes, :photo))
    if @pin.save
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @pin - Pin.new
  end

end
