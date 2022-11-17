class WorkshopsController < ApplicationController
  def index
    @workshops = Workshop.all
  end

  def create
  	
  end

  def show
    @workshop = Workshop.find(params[:id])
  end
end
