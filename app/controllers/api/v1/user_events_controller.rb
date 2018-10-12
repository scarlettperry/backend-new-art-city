class Api::V1::UserEventsController < ApplicationController

  def index
    @userevents = UserEvent.all
    render json: @userevents
  end

  def show
    @userevent = UserEvent.find(params[:id])
    render json: @userevent
  end

  def create
    @userevent = UserEvent.new(user_event_params)
      if @userevent.save
        render json: @userevent, status: :accepted
      else
        render json: {errors: @userevent.errors.full_messages}, status: :unprocessable_entity
      end

  end

private

  def user_event_params
    params.require(:user_event).permit(:user_id, :event_id)
  end

end
