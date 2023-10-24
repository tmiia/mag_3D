class HomeController < ApplicationController
  def index
    @longformat = Article.where(is_longformat: true).first
    @articles = Article.where(is_longformat: false).limit(7)
  end
end
