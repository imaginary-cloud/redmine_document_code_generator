class CompaniesController < ApplicationController

  def index
    @company = Company.new
  end

  def new_company
    @company = Company.new
    
    @company.company_name = params[:company][:company_name]
    @company.company_code = params[:company][:company_code]
    
    if request.post? && @company.save
      redirect_to '/settings/plugin/redmine_document_code_generator?tab=companies'
    else
      render :action => 'index'
    end
  end

  def update
    @company = Company.find(params[:id])
  end

  def updateCompany
    @company = Company.find(params[:company][:id])

    @company.company_name = params[:company][:company_name]
    @company.company_code = params[:company][:company_code]

    if @company.save
      redirect_to '/settings/plugin/redmine_document_code_generator?tab=companies'
    else
      render :action => 'index'
    end
  end

  def delete
    @company = Company.find(params[:id])

    if @company.destroy
      redirect_to '/settings/plugin/redmine_document_code_generator?tab=companies'
    else
      render :action => 'index'
    end
  end
end
