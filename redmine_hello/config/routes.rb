# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  match 'projects/:project_id/foos/:action',:to => 'foos'
  match 'projects/:project_id/foos/:action/:id',:to => 'foos'
end
