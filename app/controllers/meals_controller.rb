class MealsController < ApplicationController
  def new
    @meal = Meal.new
    @user = current_user
    @entry = Entry.find(params[:entry_id])
    respond_to do |format|
      format.html { redirect_to user_entry_path(@user, @entry) }
      format.js
    end
  end

  def create
    @entry = Entry.find(params[:entry_id])
    @meal = Meal.new(meal_params)
    @meal.entry = @entry
    @meal.save
    respond_to do |format|
      format.html { redirect_to user_entry_path(@user, @entry) }
      format.js
    end
  end

private
  def meal_params
    params.require(:meal).permit(:name, :calorie_count)
  end
end
