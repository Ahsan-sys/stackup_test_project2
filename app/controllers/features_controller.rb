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

  def edit
    @feature=Feature.find(params[:id])
  end

  def update
    @feature=Feature.find(params[:id])
    if @feature.update(feature_params)
      redirect_to user_plans_path(current_user.id)
    else
      render root_path
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
