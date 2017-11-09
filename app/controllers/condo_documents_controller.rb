class CondoDocumentsController < ApplicationController
before_action :authenticate_user!
  def index
    @condo_documents = CondoDocument.where(hoa_id: params[:id])
  end

end
