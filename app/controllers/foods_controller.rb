class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new; end

  def create
    @food = Food.new(food_params)
    @food.user_id = current_user.id

    if @food.save
      redirect_to foods_path, notice: 'Food was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @food = Food.find(params[:id])
    if @food.destroy
      redirect_to foods_path, notice: 'Food was successfully deleted.'
    else
      render :new, notice: 'Food was not deleted.'
    end
  end

  private

  def food_params
    params.permit(:name, :measurement_unit, :price, :quantity, :user_id)
  end
end
