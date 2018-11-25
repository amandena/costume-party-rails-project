class CostumePartiesController < ApplicationController
  def index
    @parties = CostumeParty.all
  end

  def show
  end

  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def costume_party_params
    params.require(:costume_party).permit(:name, :date, :time, :user_id)
  end
end
