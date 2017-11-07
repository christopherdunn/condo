class RepairsController < ApplicationController
  # GET /repairs
  def index
    @repairs = Repair.all
  end

  # GET /articles/1
  def show
    @repair = Repair.find(params[:id])
  end

  # GET /articles/new
  def new
    @repair = Repair.new
  end

  # POST /articles
  def create
    @repair = Repair.new(repair_params)

    if @repair.save
      flash[:notice] = 'Repair was successfully created.'
      redirect_to @repair
    else
      render action: 'new'
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def repair_params
    params.require(:repair).permit(:title, :description, :url, :submitter)
  end

end
