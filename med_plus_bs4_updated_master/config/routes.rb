Rails.application.routes.draw do
  get 'about' ,to:'pages#about'
  get 'terms' , to:'pages#terms'
  get 'privacy' , to:'pages#privacy'

  #devise_for :users
  #↓サインアップした時のwelcomeメールに対応させるため、deviseのusersを下記に書き直した。↓
  #↓This devise addition is to send an email when user sign up and some actions↓
    devise_for :users, controllers: {
    passwords: "users/passwords",
    registrations: "users/registrations",
    confirmations: "users/confirmations",
    sessions: "users/sessions"
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do 
  	resources :likes, only: [:create, :destroy]
  	resources :comments do
	  	resources :votes, only: [:create, :destroy]
	  end
  end


  root 'categories#index'

  resources :categories  
  # get 'categories/pain_relief' ,to: 'categories#pain_relief'
  # get 'categories/allergy' ,to: 'categories#allergy'
  # get 'categories/cold_flu' ,to: 'categories#cold_flu'
  # get 'categories/digestive' ,to: 'categories#digestive'
  resources :categories
 # get 'categories/pain_relief' ,to: 'categories#pain_relief'
 # get 'categories/allergy' ,to: 'categories#allergy'
 # get 'categories/cold_flu' ,to: 'categories#cold_flu'
 # get 'categories/digestive' ,to: 'categories#digestive'


  #userのshowページ作成URL
  resources :users, only:[:show, :edit, :update]
  #TODO:↓このrootは必要かどうか検討が必要　20190211
  root 'posts#index'


  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
  

  #Contact page routes↓
  # get  'contact' ,to:'contacts#index' #入力画面
  # post 'confirm' ,to:'contacts#confirm'  #確認画面
  # post 'thanks'   ,to:'contacts#thanks' #送信完了画面
  resources :contacts, only:[:new, :create]
  get 'thanks' ,to:'contacts#thanks' #送信完了画面



end
