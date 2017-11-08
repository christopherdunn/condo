class Api::V1::CondoDocumentsController < ApplicationController
  def index
    render json: { condo_documents: CondoDocument.where(hoa_id: params[:id]) }
  end
end
