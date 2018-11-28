class CostumesController < ApplicationController
  before_action :find_costume, only: [:show, :edit, :update, :destroy]

  def index
    @costumes = Costume.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    if @costume.save
      redirect_to @costume
    else
      redirect_to new_costume_path
    end
  end

  def edit
  end

  def update
    if @costume.update(costume_params)
      redirect_to @costume
    else
      redirect_to edit_costume_path
    end
  end

  def destroy
    @costume.destroy
    redirect_to costumes_path
  end

  private

  def costume_params
    params.require(:costume).permit(:name, :clothing_1, :clothing_2, :accessory_1, :accessory_2, :cost, :scare_rating, :costume_party_id)
  end

  def find_costume
    @costume = Costume.find(params[:id])
  end
end
