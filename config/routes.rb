Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  namespace :api do
    
    get '/students' => 'students#index'
    post '/students' => 'students#create'
    get '/students/:id' => 'students#show'
    patch '/students/:id' => 'students#update'
    delete '/students/:id' => 'students#destroy'
    
    post '/educations' => 'educations#create'
    patch '/educations/:id' => 'educations#update'
    delete '/educations/:id' => 'educations#destroy'

    post '/experiences' => 'experiences#create'
    patch '/experiences/:id' => 'experiences#update'
    delete '/experiences/:id' => 'experiences#destroy'


    post '/skills' => 'skills#create'
    patch '/skills/:id' => 'skills#update'
    delete '/skills/:id' => 'skills#destroy'

    post '/users' => 'users#create'

  end
end
