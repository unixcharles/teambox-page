Sass::Plugin.add_template_location('app/stylesheets', "#{Rails.root}/tmp/stylesheets")
Rails.configuration.middleware.insert_after 'Sass::Plugin::Rack', 'Rack::Static',
  :urls => ['/stylesheets'], :root => "#{Rails.root}/tmp"