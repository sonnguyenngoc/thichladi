module Erp
  module Thichladi
    module Frontend
      class BlogController < Erp::Frontend::FrontendController
        def index
          @blogs = Erp::MiniStores::Article.get_all_blogs(params).paginate(:page => params[:page], :per_page => 10)
          @main_category = Erp::MiniStores::ArticleCategory.get_category_by_alias_blog
          
          @title = @main_category.article_category_name
          @meta_keywords = @main_category.meta_keywords if @main_category.meta_keywords.present?
          @meta_description = @main_category.meta_description if @main_category.meta_description.present?
        end
        
        def detail
          @main_category = Erp::MiniStores::ArticleCategory.get_category_by_alias_blog
          @blog = Erp::MiniStores::Article.find(params[:blog_detail_id])
          
          @title = @blog.article_name
          @meta_keywords = @blog.meta_keywords if @blog.meta_keywords.present?
          @meta_description = @blog.meta_description if @blog.meta_description.present?
        end
      end
    end
  end
end