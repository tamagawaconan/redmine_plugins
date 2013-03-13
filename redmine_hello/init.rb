Redmine::Plugin.register :redmine_hello do
  name 'Redmine Hello plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  project_module :hello do
    permission :view_foos, :foos => [:index, :show, :preview]
    permission :manage_foos, :foos => [:new, :edit, :destroy],
               :require => :member
    menu :project_menu, :hello, {:controller => 'foos', :action => 'index'},:param => :project_id
  end
end
