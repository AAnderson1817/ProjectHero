class GoalsController < ApplicationController
  def index
    @goals = Goal.all
  end

  def show
    @goal = Goal.find(params[:id])
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = current_user.goals.new(goal_params)
    if @goal.save
      redirect_to goals_path
    end
  end
def destroy
  @goal = Goal.find(params[:id])
  @goal.destroy
  redirect_to goals_path
end


  def goal_params
      params.require(:goal).permit(:title, :body)
    end

end
