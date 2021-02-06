class MemoriesController < ApplicationController
  def new
    @memory = Memory.new
  end

  def index
    @memory = Memory.order("created_at DESC")
  end

  def create
    @memory = Memory.new(memory_params)
    if @memory.valid?
      @memory.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def memory_params
    params.require(:memory).permit(:image,:year, :month, :day, :place, :access_id, :scene_id, :price_id, :weather_id, :with_who, :comment).merge(user_id: current_user.id)
  end
end
