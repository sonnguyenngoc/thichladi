module Erp
  module Thichladi
    module Frontend
      class TourController < Erp::Frontend::FrontendController
        def index
          @menu = Erp::Tours::Menu.find(params[:menu_id])
          @tours = @menu.get_tours.paginate(:page => params[:page], :per_page => 10)
        end
        
        def detail
          @tour = Erp::Tours::Tour.find(params[:tour_id])
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