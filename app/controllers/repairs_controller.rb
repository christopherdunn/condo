class RepairsController < ApplicationController
  before_action :authenticate_user!
  # GET /repairs
  def index
    @hoa = Hoa.find(params[:hoa_id])
    @repairs = Repair.where(hoa_id: params[:hoa_id])
  end

  # GET /articles/1
  def show
    @hoa = Hoa.find(params[:hoa_id])
    @repair = Repair.find(params[:id])
  end

  # GET /articles/new
  def new

    @hoa = Hoa.find(params[:hoa_id])
    @repair = Repair.new
  end

  # POST /articles
  def create
    @hoa = Hoa.find(params[:hoa_id])
    @repair = Repair.new(repair_params)
    @repair.hoa = @hoa

    if @repair.save
      flash[:notice] = 'Repair was successfully created.'
      redirect_to hoa_repairs_path
    else
      render action: 'new'
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def repair_params
    params.require(:repair).permit(:title, :description, hoa_id: Hoa.find(params[:hoa_id]))
  end

end
