class UsersController < ApplicationController

  def sign_in
    @user = User.new
  end

  def login
    user = User.login(user_params)

    if user
      sign_in_user(user)
      redirect_to root_path, notice: "成功登入"
    else
      redirect_to sign_in_users_path, notice: "請輸入正確帳號密碼"
    end
  end

  def sign_up
    @user = User.new
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :email)
  end
end
