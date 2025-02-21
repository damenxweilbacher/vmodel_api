class ManufacturersController < ApplicationController
  def index # use get
    manufacturers = Manufacturer.all 
    render json: manufacturers
  end

  def show # use get
    manufacturer = Manufacturer.find(params[:id]) #dynamic
    render json: manufacturer
  end

  def create # use post
    manufacturer = Manufacturer.create(company:
    params[:company], region:params[:region]) #dynamic     
    render json: manufacturer
  end

  def update # use put or patch
    manufacturer = Manufacturer.find(params[:id]) # dynamic
    manufacturer.update(company:
    params[:company], region:params[:region]
    )
    render json: manufacturer
  end
  
  def destroy # use delete
    manufacturer = Manufacturer.find(params[:id]) # dynamic
    manufacturer.destroy
    render :no_content
  end
end
