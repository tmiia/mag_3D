class CategoriesController < ApplicationController
    def show
        @categories = Category.all
        @category = Category.find(params[:id])
        @q =Article.where(category_id: @category.id).ransack(params[:q])
        @articles = @q.result(distinct: true)
    end
end
