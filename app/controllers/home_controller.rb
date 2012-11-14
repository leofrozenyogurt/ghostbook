class HomeController < ApplicationController
  def index
    @incidents = Incident.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @incidents }
    end
  end
  def show
    @incident = Incident.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @incident }
    end
  end
end 