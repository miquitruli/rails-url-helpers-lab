Rails.application.routes.draw do
  #get "students/:id", to: "students#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
  #custom routes because it is not one of the 7 RESTful routes, has to be before the typical resources routes


  resources :students, only: [:index,:show]
end
