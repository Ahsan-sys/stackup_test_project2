class PlansController < ApplicationController
  before_action :authenticate_user!
  def index
    # byebug
    @plans=Plan.all
  end

  def new
    @plan = Plan.new
    begin
      authorize @plan
    rescue
      render :file => "#{Rails.root}/public/404.html",  layout: false, status: :not_found
    end
  end

  def create
    @plan = Plan.new(plan_params)
    
    # byebug
    # @plan.id = Integer(plan_params[:id])
    authorize @plan

    if @plan.save

      redirect_to user_plan_path(params[:user_id], @plan.id)
    else
      redirect_to users_path
    end
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def edit
    @plan=Plan.find(params[:id])
  end

  def update
    @plan=Plan.find(params[:id])
    if @plan.update(plan_params)
      redirect_to user_plans_path(current_user.id)
    else
      render 'edit'
    end
  end

  

  def destroy
    @plan = Plan.find(params[:id])
    authorize @plan
    @plan.destroy
    redirect_to user_plans_path(current_user.id)
    
  end

  private 

  def plan_params
    params.require(:plan).permit(:name, :fee)
  end

end
