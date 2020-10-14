class CompaniesController < ApplicationController

  def index
    @company = Company.new
  end

  def new_company
    p :params
  end
end
