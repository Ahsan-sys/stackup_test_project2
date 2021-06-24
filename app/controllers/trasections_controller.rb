class TrasectionsController < ApplicationController
  def index
    @trasections = Trasection.all
  end

  def new
    @trasection = Trasection.new

  end

  def create
    
    if Integer(Subscription.find(Integer(params[:subscription_id])).usages.sum(:total_usage))==0
      @trasection = Trasection.new(trasection_params)

      @trasection.amount = Subscription.find(Integer(params[:subscription_id])).plan.fee
      @trasection.overuse = nil
      @trasection.trans_date = Date.today
      @trasection.feature_id = nil
      @trasection.subscription_id = params[:subscription_id]

      if @trasection.save
        redirect_to user_subscriptions_path(current_user.id)
      else
        redirect_to user_plans_path(current_user.id)
      end

    else
      @b = Subscription.find(Integer(params[:subscription_id])).usages.where("total_usage > 0")
    
      @b.each do |b|
        @trasection = Trasection.new(trasection_params)

        @trasection.amount = (Integer(Feature.find(b.feature_id).price)*b.total_usage)
        @trasection.overuse = b.total_usage
        @trasection.trans_date = Date.today
        @trasection.feature_id = b.feature_id
        @trasection.subscription_id = params[:subscription_id]
        if @trasection.save
          
        else
          redirect_to user_plans_path(current_user.id)
        end

      end 

      redirect_to user_subscriptions_path(current_user.id)
      
    end

  end

  private

  def trasection_params
    params.require(:trasection).permit(:subscription_id)
  end


end
