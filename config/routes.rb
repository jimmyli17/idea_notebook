Rails.application.routes.draw do
  # Routes for the User resource:
  # CREATE
  get '/new_user' => 'users#new'
  get '/create_user' => 'users#create'

  # READ
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'

  # UPDATE
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id/update' => 'users#update'

  # DELETE
  get '/users/:id/destroy' => 'users#destroy'
  #------------------------------

  get '/idea_notebook/new' => 'ideas#new'
  get '/idea_notebook/create' => 'ideas#create'
  get '/idea_notebook/update/:id' => 'ideas#update'
  get '/idea_notebook/:id/edit' => 'ideas#edit'
  get '/idea_notebook' => 'ideas#index'
  get '/idea_notebook/:id' => 'ideas#show'
  get '/idea_notebook/:id/destroy' => 'ideas#destroy'
end
