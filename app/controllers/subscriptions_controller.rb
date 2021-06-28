class SubscriptionsController < ApplicationController
  def index
    @subscriptions = Subscription.all
    # authorize @subscriptions
  end

  def new

    @subscription = Subscription.new

  end

  def create
    @subscription = Subscription.new(sub_params)

    if @subscription.save
      redirect_to new_user_subscription_trasection_path(params[:user_id], @subscription.id)
    else
      redirect_to users_path
      
    end
    
  end

  def edit
  end

  def destroy
    @subscription = Subscription.find(params[:id])
    
    @subscription.destroy
    redirect_to user_subscriptions_path(current_user.id)
  end

  private

  def sub_params
    params.require(:subscription).permit(:plan_id, :user_id)
  end

end
