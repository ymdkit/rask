class ApplicationController < ActionController::Base
  include SessionsHelper

  private

  # ユーザーのログインを確認する
  def logged_in_user
    unless logged_in?
      flash[:danger] = "この操作にはログインが必要です"
      redirect_to login_url
    end
  end
end
