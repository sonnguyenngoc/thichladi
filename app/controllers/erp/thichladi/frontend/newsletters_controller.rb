module Erp
  module Thichladi
    module Frontend
      class NewslettersController < Erp::Frontend::FrontendController
        def add_email_to_newsletter
          @newsletter = Erp::Newsletters::Newsletter.new(newsletter_params)
  
          if @newsletter.save
            redirect_to erp_thichladi.success_newsletter_path
          else
            redirect_to erp_thichladi.error_newsletler_path
          end
        end
        
        private
        # Only allow a trusted parameter "white list" through.
        def newsletter_params
          params.fetch(:newsletter, {}).permit(:email)
        end
      end
    end
  end
end
      