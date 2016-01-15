Rails.application.routes.draw do
  jsonapi_resources :people
  jsonapi_resources :positions
  jsonapi_resources :groups
end
