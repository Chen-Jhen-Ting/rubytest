class UsersController < ApplicationController

  def sign_in
    @user = User.new
  end
  
  def sign_up
    @user = User.new
  end
end
