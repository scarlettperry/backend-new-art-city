class Api::V1::UserEventsController < ApplicationController

def index
  @userevents = UserEvent.all
  render json: @userevents
end

def show
  @userevent = UserEvent.find(params[:id])
  render json: @userevent
end

end
