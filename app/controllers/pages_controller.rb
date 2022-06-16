class PagesController < ApplicationController

  def home
  end

  def profile
    @user = current_user
  end

  def refuge_dashbord
    @refuge = current_refuge
    @animals = Animal.where(refuge: current_refuge)
    @animal = @refuge.animals
    @animal = Animal.new
  end
end
