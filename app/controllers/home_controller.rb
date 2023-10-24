class HomeController < ApplicationController
  def index
    @article = Article.where(is_longformat: true).first
  end
end
