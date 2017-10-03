module Erp
  module Thichladi
    module Frontend
      class ContactController < Erp::Frontend::FrontendController
        def index
          @title = "Liên Hệ"
          @message = Erp:: MiniStores::Message.new(message_params)
          if @message.save
            Erp::MiniStores::MessageMailer.sending_admin_email_message_confirmation(@message).deliver_now
            redirect_to erp_thichladi.contact_thankyou_path
          else          
            puts @message.errors.to_json
          end
        end
        
        def thank_you
        end
        
        private
          # Never trust parameters from the scary internet, only allow the white list through.
          def message_params
            params.fetch(:message, {}).permit(:name, :email, :phone, :content)
          end
      end
    end
  end
end