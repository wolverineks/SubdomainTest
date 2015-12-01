Rails.application.routes.draw do

  root to: 'blogs#index'

  get 'posts/show'

  get 'blogs/index'

  get 'blogs/show'

  match '/', to: 'blogs#index', constraints: { subdomain: 'www' }, via: [:get, :post, :put, :patch, :delete]
  
  match '/', to: 'blogs#show', constraints: { subdomain: /.+/ }, via: [:get, :post, :put, :patch, :delete]

end
