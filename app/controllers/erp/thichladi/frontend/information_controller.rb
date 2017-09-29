module Erp
  module Thichladi
    module Frontend
      class InformationController < Erp::Frontend::FrontendController
        def intro
          @about_us = Erp::MiniStores::Article.get_about_us_article
        end
        
        def policy
          @article = Erp::MiniStores::ArticleCategory.find(params[:category_id]).articles.where(archived: false).last
        end
        
        def success_newsletter
        end
        
        def error_newsletler
        end
      end
    end
  end
end