Rails.application.routes.draw do

  get "wines/search" => "wines#search"
  post "wines/results" => "wines#fetch"
  resources :wines

  namespace :api, defaults: { format: :json } do
    get "products", to: "products#list"
  end
    root :to => "wines#index"
end
