class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def new
    @meal = Meal.last
  end

    def create
      @meal = Meal.new(meal_params)
      if  @meal.save
        redirect_to root_path
      else
        render :new
      end
    end

    private
    def meal_params
      params.require(:meal).permit(:food_name, :protein, :fat, :carbohydrates)
    end

end
