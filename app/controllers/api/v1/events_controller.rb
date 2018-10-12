class Api::V1::EventsController < ApplicationController

  def index
    @events = Event.all
    render json: @events
  end

  def show
    @event = Event.find(params[:id])
    render json: @event
  end

  def create
    @event = Event.new(event_params)
      if @event.save
        render json: @event, status: :accepted
      else
        render json: {errors: @event.errors.full_messages}, status: :unprocessable_entity
      end
  end

  def destory
    @event = Event.find(params[:id])
      unless @event.nil?
        @event.destroy
        render json: @event
      else
        render json: { error: "Event not Found!" }, status: 404
      end
  end

  private

  def event_params
    params.require(:event).permit!
  end

end
