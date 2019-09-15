Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
    root    'tweets#index'                 #ルートパスの指定
    get     'tweets'          =>  'tweets#index'
    get     'tweets/new'      =>  'tweets#new'
    post    'tweets'          =>  'tweets#create'
    delete  'tweets/:id'      =>  'tweets#destroy'
    get     'tweets/:id'      =>  'tweets#destroy'
    patch   'tweets/:id'      =>  'tweets#update'
    post   'tweets/:id/edit'  =>  'tweets#edit'
    post    'tweets/:id/tweets' =>  'tweets#edit'
    get    'tweets/:id/edit'  =>  'tweets#edit'
    post    '/'               =>  'tweets#edit'
    get     'users/:id'       =>  'users#show'
    resources :tweets
end