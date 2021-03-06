Rails.application.routes.draw do
    # INSTRUCTORS

    resources :instructors, only: [:index, :show,:edit, :update, :create, :destroy]
 


    # STUDENTS
  get '/students', to: 'students#index'
  get '/students/:id', to: 'students#show'
  post '/students', to: 'students#create'
  patch '/students/:id', to: 'students#update'
  delete '/students/:id', to: 'students#destroy'


    # SESSIONS
  resources :sessions, only: [:index, :show,:edit, :update, :create, :destroy]
  # get '/sessions', to: 'sessions#index'
  # get '/sessions/:id', to: 'sessions#show'
  # post '/sessions', to: 'sessions#create'
  # patch '/sessions/:id', to: 'sessions#update'
  # delete '/sessions/:id', to: 'sessions#destroy'

   # ADMINS
  resources :admins


  

  namespace :api do
   namespace :v1 do
        post '/login', to: 'auth#login'
        post '/signup', to: 'admins#create'
        get '/profile', to: 'admins#profile'
        get '/admins', to: 'admins#index'      #REMEBER TO DELETE OR COMMENT OUT THESE ROUTES AFTER SETTING UP AUTH
        get '/admins/:id', to: 'admins#show'   #REMEBER TO DELETE OR COMMENT OUT THESE ROUTES AFTER SETTING UP AUTH
        post '/admins', to: 'admins#create'
      end
    end

end