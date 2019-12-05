Rails.application.routes.draw do
  resources :questions do
    resources :answers, shallow: true do
      resources :corrections
    end
  end  

  root 'questions#index'
end
