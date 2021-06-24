class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    # @plan = Plan.find(params[:plan_id])
    # @plan.destroy
  end



end
