Erp::Thichladi::Engine.routes.draw do
  root to: "frontend/home#index"
  get "lien-he.html" => "frontend/contact#index", as: :contact
  get "gioi-thieu.html" => "frontend/information#intro", as: :intro
  get "tin-tuc-du-lich(/:blog_id)(/:title).html" => "frontend/blog#index", as: :blog
  get "chi-tiet-bai-viet(/:blog_detail_id)(/:blog_title).html" => "frontend/blog#detail", as: :blog_detail
  get "tour-du-lich(/:menu_id)(/:title).html" => "frontend/tour#index", as: :tour
  get "tour-du-lich/chi-tiet(/:tour_id)(/:tour_title).html" => "frontend/tour#detail", as: :tour_detail
  get "dat-tour(/:tour_id)(/:tour_title).html" => "frontend/tour#booking", as: :tour_booking
  get "tim_kiem.html" => "frontend/tour#tour_search", as: :tour_search
  get "dat-tour/thanh-cong.html" => "frontend/tour#thank_you", as: :tour_thank_you
  get "thong-tin/:category_id(/:title).html" => "frontend/information#policy", as: :policy
  get "dang-ky-thanh-cong.html" => "frontend/information#success_newsletter", as: :success_newsletter
  get "dang-ky-khong-thanh-cong.html" => "frontend/information#error_newsletler", as: :error_newsletler
  get "dang-ky-nhan-tin.html" => "frontend/newsletters#add_email_to_newsletter", as: :newsletters
  post "dang-ky-nhan-tin.html" => "frontend/newsletters#add_email_to_newsletter"
end