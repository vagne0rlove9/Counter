Rails.application.routes.draw do
    get '/welcome', to: "welcome#index_m"
    get '/counter', to: "counter#index_m"
end
