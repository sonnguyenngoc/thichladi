Erp::Thichladi::Engine.routes.draw do
  root to: "frontend/home#index"
  get "lien-he.html" => "frontend/contact#index", as: :contact
  get "gioi-thieu.html" => "frontend/information#intro", as: :intro
  get "tin-tuc-du-lich(/:blog_id)(/:title).html" => "frontend/blog#index", as: :blog
  get "tin-tuc-du-lich/chi-tiet.html" => "frontend/blog#detail", as: :blog_detail
  get "tour-du-lich(/:menu_id)(/:title).html" => "frontend/tour#index", as: :tour
  get "tour-du-lich/chi-tiet(/:tour_id)(/:tour_title).html" => "frontend/tour#detail", as: :tour_detail
  get "tour-du-lich/chi-tiet/dat-tour.html" => "frontend/tour#booking", as: :tour_booking
  get "tour-du-lich/chi-tiet/dat-tour/thanh-cong.html" => "frontend/tour#thank_you", as: :tour_thank_you
end