class PinsController < ApplicationController
  def index
    @pin = Pin.new
    @pins = Pin.all.order(:photo).page params[:page]
    @Pins = @pins.search(params[:search]) if params[:search].present?
  end

  def create
    @pin = Pin.new(params.require(:pin).permit(:photo, :notes))
    @pin.save
    @pins = Pin.all
    @pin = Pin.new
  end
end
