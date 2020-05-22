class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  $days_of_the_week = %w{日 月 火 水 木 金 土}

  def set_one_month
    @first_day = params[:date].nil? ?
    Date.current.beginning_of_month : params[:date].to_date
    @last_day = @first_day.end_of_month
    one_month = [*@first_day..@last_day] # 対象の月の日数を代入
    # ユーザーに紐付く一ヶ月分のレコードを検索し取得
    @plans = @user.plans.where(planned_on: @first_day..@last_day).order(:planned_on)

    unless one_month.count == @plans.count # それぞれの件数（日数）が一致するか評価
      ActiveRecord::Base.transaction do # トランザクションを開始
        # 繰り返し処理により、1ヶ月分の勤怠データを生成
        one_month.each { |day| @user.plans.create!(planned_on: day) }
      end
      @plans = @user.plans.where(planned_on: @first_day..@last_day).order(:planned_on )
    end

  rescue ActiveRecord::RecordInvalid # トランザクションによるエラーの分岐
    flash[:danger] = "ページ情報の取得に失敗しました、再アクセスしてください。"
    redirect_to root_url
  end

  def set_user
    @user = User.find(params[:id])
  end
end
