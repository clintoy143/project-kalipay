Rails.application.routes.draw do
	get "/article" => "posts#show"
	root "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
