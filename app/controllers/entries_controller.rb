class EntriesController < ApplicationController
  def show
    @user = current_user
    @entry = Entry.find(params[:id])
  end
  
  def new
    @entry = Entry.new
    # @meal = Meal.find(params[:meal_id])
    # @exercise = Exercise.find(params[:exercise_id])
  end

  def create
    @user = User.find(params[:user_id])
    @entry = @user.entries.new()
    if @entry.save
      redirect_to user_entry_path(@user, @entry)
    else
      flash[:notice] = "NO dice bro"
    end
  end





private


end
