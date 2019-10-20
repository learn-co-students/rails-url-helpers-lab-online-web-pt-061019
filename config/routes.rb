Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show]

  #The get, is the URL path
  # to: calls on the activate method within the Students controller
  # as: ???

  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'

end
