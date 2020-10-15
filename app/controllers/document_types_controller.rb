class DocumentTypesController < ApplicationController

  def index
    @document = DocumentType.new
  end

  def new
    @document = DocumentType.new
    
    @document.document_type_name = params[:document_type][:document_type_name]
    @document.document_type_code = params[:document_type][:document_type_code]
    
    if request.post? && @document.save
      redirect_to '/settings/plugin/redmine_document_code_generator?tab=document_types'
    else
      render :action => 'index'
    end
  end

  def update
    @document = DocumentType.find(params[:id])
  end

  def updateDoc
    @document = DocumentType.find(params[:document_type][:id])

    @document.document_type_name = params[:document_type][:document_type_name]
    @document.document_type_code = params[:document_type][:document_type_code]

    if @document.save
      redirect_to '/settings/plugin/redmine_document_code_generator?tab=document_types'
    else
      render :action => 'index'
    end
  end

  def delete
    @document = DocumentType.find(params[:id])
    
    if @document.destroy
      redirect_to '/settings/plugin/redmine_document_code_generator?tab=document_types'
    else
      render :action => 'index'
    end
  end
end
