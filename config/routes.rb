Rails.application.routes.draw do
  root 'pages#home'
  get 'not_found' => 'pages#not_found'
  RailYard.load
end
