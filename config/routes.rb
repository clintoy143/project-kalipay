Rails.application.routes.draw do
	post '/project_kalipay_admin_auth' => 'sessions#create'
    get '/logout' => 'sessions#destroy'
	get "/project_kalipay_admin_auth" => "sessions#new"
	delete "/admin_post" => "posts#delete"
	post "/admin_post" => "posts#create"
	put "/admin" => "pages#update_content"
	patch "/admin" => "pages#update_content"
	get "/admin_page" => "pages#admin_page"
	get "/article" => "posts#show"
	root "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
