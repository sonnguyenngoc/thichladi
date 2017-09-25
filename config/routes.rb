Erp::Thichladi::Engine.routes.draw do
  root to: "frontend/home#index"
  get "lien-he.html" => "frontend/contact#index", as: :contact
  get "gioi-thieu.html" => "frontend/information#intro", as: :intro
  get "tin-tuc-du-lich.html" => "frontend/blog#index", as: :blog
end