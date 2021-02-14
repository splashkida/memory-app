class UsersController < ApplicationController
  def show
    redirect_to root_path unless current_user.id == @item.user_id
    @nickname = current_user.nickname
    @memories = current_user.memories
  end
end
