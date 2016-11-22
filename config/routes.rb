Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 resources :complaints
 root "complaints#index"
 # complaints "complaints#create"
 # new_complaints "complaints#new"
 # complaints "complaints#show"
end
