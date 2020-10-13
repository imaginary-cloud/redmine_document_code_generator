# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get 'settings/plugin/redmine_document_code_generator/companies', to: 'companies#index'
post 'settings/plugin/redmine_document_code_generator/companies/new_company', to: 'companies#new_company'