class TopController < ApplicationController
  def index
    # to get the list which is owned by the current_user
    @lists = List.where(user: current_user).order("created_at ASC")
  end
end

