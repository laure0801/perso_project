class AnimalsController < ApplicationController

  def create
    @animal = Animal.new(params_animal)
    @refuge = Refuge.find(params[:refuge_id])
    @animal.refuge = @refuge
    if @animal.save
      redirect_to refuge_path(@refuge)
    else
      render :new
    end
  end

  private

  def params_animal
    params.require(:animal).permit(:name, :species, :age, :description)
  end
end
