Rails.application.routes.draw do
  # get '/auth/:provider/callback', to: 'sessions#create'

  root 'welcome#home'

  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
end
