class PagesController < ApplicationController
  def home
    # @user = User.find(session[:user_id])
    puts session[:current_user]
  end

  def login
    @user = User.new
  end
end
