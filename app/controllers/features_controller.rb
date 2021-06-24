class FeaturesController < ApplicationController
  def index
    @features = Feature.all
  end

  def new
    @feature = Feature.new
  end

  def create
    @plan = params[:plan_id]
    @feature = Feature.new(feature_params)
    @feature.plan_id=@plan
    # byebug
    if @feature.save
      redirect_to user_plans_path(current_user)

    else
      redirect_to users_path
    end

  end

  def destroy

    @feature = Feature.find(params[:id])
    @feature.destroy
    
  end

  private

  def feature_params
    params.require(:feature).permit(:name,:code, :price, :limit, :plan_id)
  end
    

end
