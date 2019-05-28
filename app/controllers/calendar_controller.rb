class CalendersController < ApplicationController

    def index
      @events = Event.all
      render json: @events
    end
  
    def create
      user = User.find(1)
      cal = Calender.find(1)
      nEvent = Event.create(user: user, calender: cal, date: params[:date])
      render json: nEvent
    end
  
    def destroy
      # Event.destroy
    end
  
    private
    def pokemon_params
      params.require(:event).permit(:calender_id, :date, :trainer_id)
    end
  end
  