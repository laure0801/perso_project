class RefugesController < ApplicationController
  before_filter :authenticate_admin!
  def index
    @refuges = Refuge.all
  end

  def show
    @refuge = Refuge.find(params[:id])
  end
end
