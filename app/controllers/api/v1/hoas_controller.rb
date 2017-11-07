class Api::V1::HoasController < ApplicationController
  # def index
  #   render json: Hoa.all
  # end

  def show
    hoa = Hoa.find(params[:id]).to_json(include: :condo_documents)

    condo_documents = CondoDocument.where(hoa_id: params[:id]).to_json

    render json: { hoa: hoa, condo_documents: condo_documents }
  end

  def new
  end


  def create
   hoa = Hoa.new(
     name: params[:name],
     address: params[:address],
     city: params[:city],
     state: params[:state],
     zip: params[:zip],
     units: params[:units]
   )

   if hoa.save
     render json: {hoa: hoa}
   else
     render json: {error: hoa.errors.full_messages }, status: :unprocessable_entity
    end

  end

end
