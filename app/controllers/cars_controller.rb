class CarsController < ApplicationController
  def index # use get
    cars = Car.all 
    render json: cars
  end

  def show # use get
    car = Car.find(params[:id]) #dynamic
    render json: car
  end

  def create # use post
    car = Car.create!(model:
    params[:model], prod_year:params[:prod_year]) #dynamic     
    render json: car
  end

  def update # use put or patch
    car = Car.find(params[:id]) # dynamic
    car.update(model:
    params[:model], prod_year:params[:prod_year]
    )
    render json: car
  end
  
  def destroy # use delete
    car = Car.find(params[:id]) # dynamic
    car.destroy
    render :no_content
  end
end
