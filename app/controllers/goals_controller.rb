class GoalsController < ApplicationController
  before_action :authorize, only: [:index, :new, :show, :edit, :destroy]
  def index
    @goals = Goal.all
    # if !logged_in?
      # redirect_to root_path
    # end
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
      redirect_to user_path(current_user)
    end
  end
def destroy
  @goal = Goal.find(params[:id])
  @goal.destroy
  redirect_to user_path(current_user)
end


  def goal_params
      params.require(:goal).permit(:title, :body)
    end

end
