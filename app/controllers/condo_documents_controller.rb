class CondoDocumentsController < ApplicationController
before_action :authenticate_user!
  def index
    @hoa = Hoa.find(params[:hoa_id])

    @condo_documents = CondoDocument.where(hoa_id: params[:hoa_id])
    
  end

  def new

    @hoa = Hoa.find(params[:hoa_id])
    @condo_document = CondoDocument.new
  end

  # POST /articles
  def create
    @hoa = Hoa.find(params[:hoa_id])
    @condo_document = CondoDocument.new(doc_params)
    @condo_document.hoa = @hoa

    if @condo_document.save
      flash[:notice] = 'Document was successfully submited.'
      redirect_to hoa_condo_documents_path
    else
      render action: 'new'
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def doc_params
    params.require(:condo_document).permit(:document, :name, hoa_id: Hoa.find(params[:hoa_id]))
  end


end
