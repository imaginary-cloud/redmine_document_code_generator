class CreateDocumentTypes < ActiveRecord::Migration
  def change
    create_table :document_types do |t|
      t.string :document_type_name
      t.string :document_type_code
    end
  end
end
