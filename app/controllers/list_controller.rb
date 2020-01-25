class ListController < ApplicationController
  # def set_list allows it having the @list
  before_action :set_list, only: %i(edit update destroy)
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to :root
    else
      @list.valid?
      render action: :new
    end
  end
  # def set_list allows it having the @list
  def edit
  end
  def update
    # update_attributs receive the hash and update and save with success
    if @list.update_attributes(list_params)
      redirect_to :root
    else
      render action: :edit
    end
  end
  def destroy
    @list.destroy
    redirect_to :root
  end
  # private method which you cannnot set the receiver
  private
    def list_params
      # get the params and set the key of the requirement and merge the hash for settle whoelse did it
      params.require(:list).permit(:title).merge(user: current_user)
    end
    # puts the updates info into the instance @list
    def set_list
      @list = List.find_by(id: params[:id])
    end
end
