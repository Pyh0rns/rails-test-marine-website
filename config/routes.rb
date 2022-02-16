Rails.application.routes.draw do
  get 'myself/about'
  get 'formations/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :formations
  get 'about', to: 'myself#about'
end

# Prefix Verb   URI Pattern                    Controller#Action
# formations GET    /formations(.:format)          formations#index
#            POST   /formations(.:format)          formations#create
# new_formation GET    /formations/new(.:format)      formations#new
# edit_formation GET    /formations/:id/edit(.:format) formations#edit
#  formation GET    /formations/:id(.:format)      formations#show
#            PATCH  /formations/:id(.:format)      formations#update
#            PUT    /formations/:id(.:format)      formations#update
#            DELETE /formations/:id(.:format)      formations#destroy
