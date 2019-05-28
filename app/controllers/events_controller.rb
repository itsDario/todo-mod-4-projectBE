require 'faker'

class EventsController < ApplicationController

  def index
    @events = Event.all
    render json: @events
  end

  def create
    # Event.create()
  end

  def destroy
    # Event.destroy
  end

  private
  def pokemon_params
    params.require(:pokemon).permit(:nickname, :species, :trainer_id)
  end
end
