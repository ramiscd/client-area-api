class StatusChangesController < ApplicationController
  def index
    @status_changes = StatusChange.all
  end

  def create
    @status_change = StatusChange.create(create_params)
  end

  private
  def create_params
    params.require(:status_change).permit(%i[application_id, status_id])
  end
end