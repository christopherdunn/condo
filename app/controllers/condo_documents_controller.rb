class CondoDocumentsController < ApplicationController

  def index
    @condo_documents = CondoDocument.where(hoa_id: params[:id])
  end

end
