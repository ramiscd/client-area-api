class ApplicationsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @applications = Application.all
  end

  def create
    @application = Application.create(create_params)
  end

  private

  def create_params
    params.require(:application).permit(%i[user_id form_id])
  end
end
