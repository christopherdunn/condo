class BugetsController < ApplicationController
  before_action :authenticate_user!

  def index
    @hoa = Hoa.find(params[:hoa_id])
    @budgets = Budget.where(hoa_id: params[:hoa_id])
  end

  def show
    @hoa = Hoa.find(params[:hoa_id])
    @budget = Budget.find(params[:id])
  end

  def new

    @hoa = Hoa.find(params[:hoa_id])
    @budget = Budget.new
  end

  def create
    @hoa = Hoa.find(params[:hoa_id])
    @budget = Budget.new(budget_params)
    @budget.hoa = @hoa

    if @budget.save
      flash[:notice] = 'Budget was successfully created.'
      redirect_to hoa_budget_path
    else
      render action: 'new'
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def budget_params
    params.require(:budget).permit(:oil, :gas, :electric, :fees, :assessments, :water, :insurance, :accounting, :repairs, :landscaping, :snow, :miscellaneous, :cleaning, :taxes, :waste_removal, hoa_id: Hoa.find(params[:hoa_id]))
  end

end
