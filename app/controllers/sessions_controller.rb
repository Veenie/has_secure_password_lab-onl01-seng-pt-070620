class SessionsController < ApplicationController
  def create
    user = User.find_by(name: params[:user][:name])
     unless user.save
    session[:user_id] = user.id
  end
end