class StatusesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @statsues = Status.all
  end

  def create
    @status = Status.create(create_params)
  end

  private
  def create_params
    params.require(:status).permit(%i[name application_id])
  end
end