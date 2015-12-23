Rails.application.routes.draw do
  resources :contacts
  resources :customers
  devise_for :users
  get 'resumes/index'

  get 'resumes/new'

  get 'resumes/create'

  get 'resumes/destroy'
resources :resumes

  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
root 'welcome#index'
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
 resources :products 
  resources :categories
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products


 
get "/overview", :to => "products#overview"
get "/client", :to => "products#client"
get "/warranty_policy", :to => "products#warranty_policy"
get "/order_management", :to => "customers#order_management"
get "/aboutus", :to => "products#aboutus"
get "/service", :to => "contacts#service"
end
