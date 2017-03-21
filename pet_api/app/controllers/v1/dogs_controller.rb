class V1::DogsController < ApplicationController
  def index
    @dogs = Dog.all
    render json: @dogs, status: :ok
  end

  def create
    @dog = Dog.new(dog_params)
    if(@dog.save)
      render json: @dog, status: :created
    else
      render json: @dog.errors, status: :ok
    end
  end

  def show
    @dog = Dog.find(params[:id])
    render json: @dog, status: :ok
  end

  private

  def dog_params
    params.require(:dog).permit(:name,
                                :owner,
                                :castrated,
                                :genre,
                                :breed,
                                :phone,
                                :last_time,
                                :birthday)
  end
end
