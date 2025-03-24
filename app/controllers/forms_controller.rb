class FormsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @forms = Form.all
  end

  def create
    @form = Form.create(create_params)
  end

  private

  def create_params
    params.require(:form).permit(%i[country question document_passport document_rg payment form_type])
  end
end