module Erp
  module Thichladi
    module Frontend
      class HomeController < Erp::Frontend::FrontendController
        def index
          @home_menus = Erp::Tours::Menu.get_home_menus
        end
      end
    end
  end
end