class UsagesController < ApplicationController
  def index
  end

  def new
    @usage = Usage.new
  end

  def create
    @usage = Usage.new(usage_params)
    if @usage.save
      redirect_to user_subscriptions_path(params[:user_id],:plan_id=>Subscription.find(Integer(params[:subscription_id])).plan.id)
    else 
      redirect_to user_plans_path(Subscription.find(Integer(params[:subscription_id])).buyer.id)
    end
  end

  def edit
    @usage=Usage.find(params[:id])
  end

  def update
    @usage=Usage.find(params[:id])
    if @usage.update(usage_params)
      redirect_to user_plans_path(current_user.id)
    else
      render root_path
    end
  end

  private

  def usage_params
    params.require(:usage).permit(:subscription_id, :feature_id, :total_usage, :usage_date)
  end
end
