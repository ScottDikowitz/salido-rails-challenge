Rails.application.routes.draw do
  root :to => "wines#index"
  get "wines/search" => "wines#search"
  resources :wines
end
