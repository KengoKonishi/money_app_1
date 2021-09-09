Rails.application.routes.draw do
  get '/simple_calendar/top' => "simple_calendar#top"
  get 'mypage/show'
  get '/' => "home#top"
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords',
    :confirmations => 'users/confirmations',
    :unlocks => 'users/unlocks',
  }

  devise_scope :user do
    root :to => "users/sessions#new"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end
  resources :mypage
  resources :basic_income_records
  resources :basic_expense_records
  resources :original_income_categories
  resources :original_income_records
  resources :income_records
  resources :original_expense_categories
  resources :original_expense_records
end
