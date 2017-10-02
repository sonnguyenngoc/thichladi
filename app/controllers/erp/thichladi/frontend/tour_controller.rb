module Erp
  module Thichladi
    module Frontend
      class TourController < Erp::Frontend::FrontendController
        def index
          @menu = Erp::Tours::Menu.find(params[:menu_id])
          @tours = @menu.get_tours.paginate(:page => params[:page], :per_page => 10)
          @title = @menu.menu_name
          @meta_keywords = @menu.meta_keywords if @menu.meta_keywords.present?
          @meta_description = @menu.meta_description if @menu.meta_description.present?
          @meta_image = @menu.meta_image if @menu.meta_image.present?
        end
        
        def tour_search
          @menu = Erp::Tours::Menu.find(params[:menu_id])
          @tours = @menu.get_search_tours(params).paginate(:page => params[:page], :per_page => 10)
          @title = "Tìm kiếm tour du lịch"
        end
        
        def detail
          @tour = Erp::Tours::Tour.find(params[:tour_id])
          @title = @tour.tour_name
          @meta_keywords = @tour.meta_keywords if @tour.meta_keywords.present?
          @meta_description = @tour.meta_description if @tour.meta_description.present?
          @meta_image = @tour.meta_image if @tour.meta_image.present?
        end
        
        def booking
          @tour = Erp::Tours::Tour.find(params[:tour_id])
        end
        
        def thank_you
        end
      end
    end
  end
end