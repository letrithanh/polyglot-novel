class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      redirect_to root_path
    else
      flash[:create_user_errors] = []
      @user.errors.full_messages.each { |msg| flash[:create_user_errors] << msg }  
      redirect_to new_user_path # TODO: investigate why can't use render :new <- fix: turbo-data=false
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
