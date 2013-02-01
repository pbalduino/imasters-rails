Rogus::Application.routes.draw do
	root :to => 'dashboard#index'

  resources :departamentos

  resources :funcionarios

  match 'email' => 'funcionarios#email'

  match 'send_email' => 'funcionarios#send_email'
end