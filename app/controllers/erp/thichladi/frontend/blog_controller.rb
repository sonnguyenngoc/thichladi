module Erp
  module Thichladi
    module Frontend
      class BlogController < Erp::Frontend::FrontendController
        def index
          @blogs = Erp::MiniStores::Article.get_all_blogs(params).paginate(:page => params[:page], :per_page => 10)
          @main_category = Erp::MiniStores::ArticleCategory.get_category_by_alias_blog
        end
        
        def detail
          @main_category = Erp::MiniStores::ArticleCategory.get_category_by_alias_blog
          @blog = Erp::MiniStores::Article.find(params[:blog_detail_id])
        end
      end
    end
  end
end