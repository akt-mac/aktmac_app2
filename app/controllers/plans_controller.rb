class PlansController < ApplicationController
  before_action :set_user_plans
  before_action :set_plan, only: %i(edit)

  def new
  end

  def edit
  end

  def update
    flash[:info] = "テスト"
    redirect_to user_url(current_user)
  end

  private

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
