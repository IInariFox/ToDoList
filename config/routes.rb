Rails.application.routes.draw do
  root 'homepage#index'
  get 'tasks' => 'tasks#index'
  post 'tasks' => 'tasks#create'
  get '*path'    => 'homepage#index'
  delete 'tasks/:id' => 'tasks#destory'
  put '/tasks/:id/mark_complete' => 'tasks#mark_complete'
  put 'tasks/:id/mark_active' => 'tasks#mark_active'
end
