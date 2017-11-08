class HoasController < ApplicationController
  before_action :authenticate_user!

  def show
   @hoa = Hoa.find(params[:id])
  end


end
