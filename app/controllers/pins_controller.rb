class PinsController < ApplicationController
  def index
    @pins = Pin.all
    @pin = Pin.new
  end

  def create
    @pin = Pin.new(params.require(:notes).permit(:photo))
    @pin.save
    @pins = Pin.all
    @pin = Pin.new
  end
end
