Rails.application.routes.draw do
  resources :staticpages
  root "staticpages#index"
end
