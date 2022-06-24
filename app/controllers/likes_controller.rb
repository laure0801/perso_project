class LikesController < ApplicationController
  before_action :find_refuge
  before_action :find_like, only: [:destroy]

  def create
    if already_liked?
      flash[:notice] = "You can't like more than once"
    else
      @refuge.likes.create(user: current_user)
    end
    redirect_to refuge_path(@refuge)
  end

  def destroy
    if !(already_liked?)
      flash[:notice] = "Cannot unlike"
    else
      @like.destroy
    end
    redirect_to refuge_path(@refuge)
  end

  private

  def find_refuge
    @refuge = Refuge.find(params[:refuge_id])
  end

  def already_liked?
    Like.where(user_id: current_user.id, refuge_id:
    params[:refuge_id]).exists?
  end

  def find_like
   @like = @refuge.likes.find(params[:id])
  end
end
