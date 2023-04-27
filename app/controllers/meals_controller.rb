class MealsController < ApplicationController
  def index
    @meals = Meal.all
    @meal = Meal.last
    @today_meals = Meal.where('DATE(created_at) = ?', Date.today)
    @todays_calories = @today_meals.sum {|meal| meal.fat * 9 + meal.protein * 4 + meal.carbohydrates * 4 }
  end

  def new
    @meal = Meal.new
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
