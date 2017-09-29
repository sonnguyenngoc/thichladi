module Erp
  module Thichladi
    module ApplicationHelper
      # menu link helper
      def menu_link(menu)
        erp_thichladi.tour_path(menu_id: menu.id, title: url_friendly(menu.name))
      end
      
      def tour_link(tour)
        erp_thichladi.tour_detail_path(tour_id: tour.id, tour_title: url_friendly(tour.name))
      end
      
      def tour_booking_link(tour)
        erp_thichladi.tour_booking_path(tour_id: tour.id, tour_title: url_friendly(tour.tour_name))
      end
      
      def blog_link(blog)
        erp_thichladi.blog_path(blog_id: blog.id, title: url_friendly(blog.name))
      end
      
      # article link
      def blog_detail_link(blog_detail)
        erp_thichladi.blog_detail_path(blog_detail_id: blog_detail.id, blog_title: url_friendly(blog_detail.name))
      end
      
      def count_down(from_time, to_time)
        if from_time.present? and to_time.present?
          if from_time.beginning_of_day <= Time.now.beginning_of_day and Time.now.end_of_day <= to_time.end_of_day
            "<div class=\'time-left bottom-15 right-20 font-md-14\'>
                <span><i class=\'ico fa fa-clock-o mr-10\'></i>
                <span class=\'t-uppercase\' data-countdown=\'#{to_time.end_of_day}\'></span>
                </span>
            </div>".html_safe
          end
        end
      end
      
      def count_down_detail(from_time, to_time)
        if from_time.present? and to_time.present?
          if from_time.beginning_of_day <= Time.now.beginning_of_day and Time.now.end_of_day <= to_time.end_of_day
            "<div class=\'time-left\'>
                <p class=\'t-uppercase color-muted\'>Tour Du Lịch Đang Giảm Giá</p>
                <div class=\'color-mid font-14 font-lg-16\'>
                    <i class=\'ico fa fa-clock-o mr-10\'></i>
                    <span data-countdown=\'#{to_time.end_of_day}\'></span>
                </div>
            </div>".html_safe
          end
        end
      end
      
    end
  end
end
