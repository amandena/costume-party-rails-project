class CostumesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def costume_params
    params.require(:costume).permit(:name, :clothing_1, :clothing_2, :accessory_1, :accessory_2, :cost, :scare_rating, :costume_party_id)
  end
end
