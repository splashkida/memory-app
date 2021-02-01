class MemoriesController < ApplicationController
  def new
    @memory = Memory.new
  end

  private

  def memory_params
    params.require(:memory).permit(:image,:year, :month, :day, :place, :access, :scene, :price, :with_who, :comment).merge(user_id: current_user.id)
  end
end
