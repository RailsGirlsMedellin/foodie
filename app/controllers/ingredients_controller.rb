class IngredientsController < ApplicationController
  before_action :set_plate
  before_action :set_ingredient ,only: [ :edit, :update, :destroy]


  def new
    @ingredient= @plate.ingredients.new
  end

  def create
    @ingredient= @plate.ingredients.new(ingredient_params)
    if @ingredient.save
      redirect_to  @plate ,notice: "Ingredient was successfully created."
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @ingredient.update(ingredient_params)
      redirect_to @plate, notice: "Ingredient was successfully updated."
    else
      render "edit"
    end
  end

  def destroy
    @ingredient.destroy
    redirect_to @plate, notice: "Ingredient was successfully destroyed."
  end

  private

  def set_plate
    @plate= Plate.find(params[:plate_id])
  end

  def set_ingredient
    @ingredient = @plate.ingredients.find(params[:id])
  end

  def ingredient_params
  params.require(:ingredient).permit(:id,:content, :plate_id)
  end
end
