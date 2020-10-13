Redmine::Plugin.register :redmine_document_code_generator do
  name 'Redmine Document Code Generator plugin'
  author 'Imaginary Cloud (https://imaginarycloud.com)'
  description 'Document code generation for easy organization'
  version '0.0.1'
  url 'https://github.com/imaginary-cloud/redmine_document_code_generator'
  author_url 'https://imaginarycloud.com'
  
  settings default: {'empty' => true}, partial: 'settings/dummy'
end
