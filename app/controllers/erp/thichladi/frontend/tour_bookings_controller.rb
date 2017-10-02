module Erp
  module Thichladi
    module Frontend
      class TourBookingsController < Erp::Frontend::FrontendController
        
        def create
          @tour_booking = Erp::Tours::TourBooking.new(tour_booking_params)
          if @tour_booking.save
            redirect_to erp_thichladi.tour_thankyou_path
          else           
            puts @tour_booking.errors.to_json
          end
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