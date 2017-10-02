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
          
          @tour_booking = Erp::Tours::TourBooking.new(tour_booking_params)
          if @tour_booking.save
            Erp::Tours::TourMailer.sending_admin_email_tour_confirmation(@tour_booking).deliver_now
            Erp::Tours::TourMailer.sending_customer_email_tour_confirmation(@tour_booking).deliver_now
            redirect_to erp_thichladi.tour_thankyou_path
          else          
            puts @tour_booking.errors.to_json
          end
        end
        
        def thank_you
        end
        
        private
          # Never trust parameters from the scary internet, only allow the white list through.
          def tour_booking_params
            params.fetch(:tour_booking, {}).permit(:customer_name, :customer_phone, :customer_email, :customer_address, :note, :number_people_1, :number_people_2, :number_people_3, :number_people_4, :tour_id)
          end
      end
    end
  end
end