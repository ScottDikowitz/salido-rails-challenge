Rails.application.routes.draw do
  root :to => "wines#index"
  get "wines/search" => "wines#search"
  post "wines/results" => "wines#fetch"
  resources :wines
end
