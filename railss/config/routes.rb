Rails.application.routes.draw do
  get '/welcome', to: 'welcome#index_m'

  resources :counters
end
