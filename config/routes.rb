# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html


get 'settings/plugin/redmine_document_code_generator/companies', to: 'companies#index'
get 'settings/plugin/redmine_document_code_generator/documents', to: 'document_types#index'
get 'settings/plugin/redmine_document_code_generator/documents/edit/:id', to: 'document_types#update'
get 'settings/plugin/redmine_document_code_generator/companies/edit/:id', to: 'companies#update'
post 'settings/plugin/redmine_document_code_generator/companies/new_company', to: 'companies#new_company'
post 'settings/plugin/redmine_document_code_generator/documents/new', to: 'document_types#new'
patch 'settings/plugin/redmine_document_code_generator/documents/update', to: 'document_types#updateDoc'
patch 'settings/plugin/redmine_document_code_generator/companies/update', to: 'companies#updateCompany'
delete 'settings/plugin/redmine_document_code_generator/companies/:id', to: 'companies#delete'
delete 'settings/plugin/redmine_document_code_generator/documents/:id', to: 'document_types#delete'
get 'documents', to: 'document_gen#index'