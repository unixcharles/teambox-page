TeamboxPage::Application.routes.draw do
  match '/auth/teambox/callback' => "auth#callback"
  match '/auth/failure' => "auth#failure"
  match '/login' => "auth#login", :as => :login
  match '/logout' => "auth#logout", :as => :logout

  scope "/admin" do
    get '/settings(/:part)' => "settings#edit", :as => :settings
    post '/settings(/:part)' => "settings#update"
    post '/pages/fetch' => "pages#fetch", :as => :fetch_pages
    match '/pages/:id' => 'pages#show', :as => :preview_page
    resources :routes, :except => :show
    get '/' => "auth#login"
  end

  match '/(:permalink)' => 'routes#show'
end
