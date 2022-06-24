class RefugesController < ApplicationController
  before_action :set_refuge, only: [:show]
  def index
    @refuges = Refuge.all
  end

  def show

  end

  private

  def set_refuge
    @refuge = Refuge.find(params[:id])
  end

  def refuge_params
    params.require(:refuge).permit[:name, :address, :postcode, :city]
  end
end
