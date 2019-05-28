require 'pry'

class EventsController < ApplicationController

  def index
    @events = Event.all
    render json: @events
  end

  def create
    Event.create(user: params[:user], calender: params[:calender], date: params[:date])
    binding.pry
  end

  def destroy
    # Event.destroy
  end

  private
  def pokemon_params
    params.require(:event).permit(:calender_id, :date, :trainer_id)
  end
end
