class CostumePartiesController < ApplicationController
  before_action :find_party, only: [:show, :update, :edit, :destroy]

  def index
    @parties = CostumeParty.all
  end

  def show
  end

  def new
    @party = CostumeParty.new
  end

  def create
    @party = CostumeParty.new(costume_party_params)
    if @party.save
      redirect_to costume_parties_path(@party)
    else
      redirect_to new_costume_parties_path
    end
  end

  def edit
  end

  def update
    if @party.update(costume_party_params)
      redirect_to @party
    else
      redirect_to edit_costume_party_path
    end
  end

  def destroy
  end

  private

  def costume_party_params
    params.require(:costume_party).permit(:name, :date, :time, :user_id)
  end

  def find_party
    @party = CostumeParty.find(params[:id])
  end
end
