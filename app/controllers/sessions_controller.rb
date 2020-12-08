class SessionsController < ApplicationController
  def create
    @user = User.find_by
    return head(:forbidden) unless @user.save
    session[:user_id] = @user.id
  end
end