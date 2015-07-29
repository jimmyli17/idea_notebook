Rails.application.routes.draw do
  get '/idea_notebook/new' => 'ideas#new'
  get '/idea_notebook/create' => 'ideas#create'
  get '/idea_notebook/update/:id' => 'ideas#update'
  get '/idea_notebook/:id/edit' => 'ideas#edit'
  get '/idea_notebook' => 'ideas#index'
  get '/idea_notebook/:id' => 'ideas#show'
  get '/idea_notebook/:id/destroy' => 'ideas#destroy'
end
