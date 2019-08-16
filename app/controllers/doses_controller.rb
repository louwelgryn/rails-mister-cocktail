class DosesController < ApplicationController


  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail_id = @cocktail.id
      @dose.save
      redirect_to cocktail_path(@cocktail)

  end

  def destroy
  end


private

  def dose_params
    params.require(:dose).permit(:cocktail_id, :ingredient_id, :description)
  end



end
