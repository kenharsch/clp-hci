class ShowNamesController < ApplicationController
  before_action :set_show_name, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @show_names = ShowName.all
    respond_with(@show_names)
  end

  def show
    respond_with(@show_name)
  end

  def new
    @show_name = ShowName.new
    respond_with(@show_name)
  end

  def edit
  end

  def create
    @show_name = ShowName.new(show_name_params)
    @show_name.save
    respond_with(@show_name)
  end

  def update
    @show_name.update(show_name_params)
    respond_with(@show_name)
  end

  def destroy
    @show_name.destroy
    respond_with(@show_name)
  end

  private
    def set_show_name
      @show_name = ShowName.find(params[:id])
    end

    def show_name_params
      params.require(:show_name).permit(:name, :real_name, :user_id)
    end
end
