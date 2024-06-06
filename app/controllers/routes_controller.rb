class RoutesController < ApplicationController
  def new
  end

  def create
    start_location = if params[:start_location] == '現在地'
                       "#{params[:start_latitude]},#{params[:start_longitude]}"
                     else
                       params[:start_location]
                     end
    end_location = params[:end_location]

    respond_to do |format|
      format.html { render :new }
      format.json { render json: { start_location: start_location, end_location: end_location } }
    end
  end
end
