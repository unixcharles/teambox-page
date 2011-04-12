require 'oa-oauth'
TeamboxPage::Application.config.middleware.use OmniAuth::Strategies::Teambox, 
  Rails.configuration.teambox[:key], Rails.configuration.teambox[:secret],
  {:scope => "offline_access read_projects"}