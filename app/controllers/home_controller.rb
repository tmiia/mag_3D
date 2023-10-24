class HomeController < ApplicationController
  def index
    @long_format = Article.where(is_longformat: true)
    @actus = Article.where(is_longformat: false)
  end
end
