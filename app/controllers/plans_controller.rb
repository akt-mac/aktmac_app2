class PlansController < ApplicationController
  before_action :set_user_plans
  before_action :set_plan, only: %i(edit update)

  def new
  end

  def edit
  end

  def update
    if @plan.update_attributes(plan_params)
      flash[:info] = "予定を更新しました。"
      redirect_to user_url(current_user)
    else
      render :edit
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:plan_1, :plan_2, :plan_3, :plan_4, :plan_5, :plan_6, :plan_7, :note, :user_id)
  end

  def set_user_plans
    @user = User.find(params[:user_id])
  end


    def set_plan
      unless @plan = @user.plans.find_by(id: params[:id])
        flash[:danger] = "アクセス権限がありません。"
        redirect_to @user
      end
    end
end
