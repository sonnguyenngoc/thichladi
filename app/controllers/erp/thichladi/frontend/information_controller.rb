module Erp
  module Thichladi
    module Frontend
      class InformationController < Erp::Frontend::FrontendController
        def intro
          @about_us = Erp::MiniStores::Article.get_about_us_article
          @title = @about_us.article_name
        end
        
        def policy
          @article = Erp::MiniStores::ArticleCategory.find(params[:category_id]).articles.where(archived: false).last
          @title = @article.article_name
        end
        
        def success_newsletter
          @title = "Đăng Ký Thành Công"
        end
        
        def error_newsletler
          @title = "Đăng Ký Thất Bại"
        end
      end
    end
  end
end