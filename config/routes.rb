Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'tasks', to: 'tasks#index'
  # get 'tasks/new', to: 'tasks#new', as: :new_task
  # get 'tasks/:id', to: 'tasks#show', as: :task
  # post 'tasks', to: 'tasks#create'

  # # get data first
  # get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # # then patch it
  # patch 'tasks/:id', to: 'tasks#update', as: :update_task

  # # delete
  # delete 'tasks/:id', to: 'tasks#destroy'
  root to: 'tasks#home'
  resources :tasks
end
