class RefugesController < ApplicationController

  def index
    @refuges = Refuge.all
  end

  def show
    @refuge = Refuge.find(params[:id])
  end
end
