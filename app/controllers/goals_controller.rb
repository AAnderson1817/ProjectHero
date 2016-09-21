class GoalsController < ApplicationController
  def index
    @goals = Goal.all
  end

  def show
    @goal = Goal.find(params[:id])
  end

  def create
    @goal = Goal.new(goal_params)
    if @goal.save
      redirect_to new_session_path
    end
  end

  def delete
    @goal = Goal.find(params[:id]).destroy
  end

  def new
    @goal = Goal.new
  end

  def goals_params
    params_require(:body)
  end

end
