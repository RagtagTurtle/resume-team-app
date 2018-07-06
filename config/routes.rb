Rails.application.routes.draw do
  namespace :api do

    post '/educations' => 'educations#create'
    patch '/educations/:id' => 'educations#update'
    delete '/educations/:id' => 'educations#destroy'
    
  end
end
