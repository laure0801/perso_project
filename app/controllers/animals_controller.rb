class AnimalsController < ApplicationController
  before_action :set_animal, only: [:edit, :update, :destroy]
  before_action :set_refuge, only: [:create, :edit]


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

  def edit
    @refuge = Refuge.find(params[:refuge_id])
  end

  def update
    @animal.update(params_animal)
    if @animal.save
      redirect_to refuge_dashbord_path
    else
      render :new
    end
  end

  def destroy
    @animal.destroy
    redirect_to refuge_dashbord_url, notice: 'Reservation was successfully destroyed.'
  end

  private

  def params_animal
    params.require(:animal).permit(:name, :species, :age, :description)
  end

  def set_animal
    @animal = Animal.find(params[:id])
  end

  def set_refuge
    @refuge = refuge.find(params[:refuge_id])
  end
end
