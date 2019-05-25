class CalendersController < ApplicationController

  def index
    @calenders = Calender.all
    render json: @calenders
  end

  def show
    @calender = Calender.find(params[:id])
    render json: @calender
  end
end
