class UsersController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @users = User.all
  end

  def create
    @user = User.create(create_params)
  end



  private

  def create_params
    params.require(:user).permit(%i[full_name email password])
  end
end
