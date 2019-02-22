class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
  @car = Car.find(params[:id])
  @parts = @car.parts

  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      flash[:notice] = "car added successfully"
   redirect_to car_parts_path(@car)
 else
    flash[:error] = @car.errors.full_messages.join(', ')
    render :new
   end
 end




 private

  def car_params
    params.require(:car).permit(:make, :model, :year)
  end
end
