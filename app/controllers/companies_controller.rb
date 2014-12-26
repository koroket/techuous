class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
  	@company = Company.find_by(name: params[:name])
  	if @company
  	    
  	else
  		render 'new'
  	end

  end

  def new
  	@company = Company.new
  end

  def create
  	@company = Company.new(company_params)

      if @company.save
      redirect_to show_company_path(name: @company.name)
      else
      render 'new'

      end
  end

  private

  def company_params
    params.require(:company).permit(:name)
  end
end