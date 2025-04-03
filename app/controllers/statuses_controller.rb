class StatusesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @statsues = Status.all
  end

  private
end