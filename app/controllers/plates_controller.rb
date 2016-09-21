class PlatesController < ApplicationController
  before_action :set_plate, only: [:show, :edit, :update, :destroy]

  def index
    @plates = Plate.all
  end

  def new
    @plate= Plate.new
  end

  def create
    @plate=Plate.new(plate_params)
    if @plate.save
      redirect_to  plates_path, notice: "Plate was successfully created."
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @plate.update(plate_params)
      redirect_to plates_path, notice: "Plate was successfully updated."
    else
      render 'edit'
    end
  end

  def destroy
    @plate.destroy
    redirect_to  plates_path, notice: "Plate was successfully destroyed."
  end

  def show
  end

  private

   def plate_params
    params.require(:plate).permit(:id,:title,:description,:producer)
   end

   def set_plate
     @plate = Plate.find(params[:id])
   end

end
