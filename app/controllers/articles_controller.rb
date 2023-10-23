class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show edit update destroy ]
  # add_breadcrumb "admin", :rails_admin_path, unles: [:index, :show]
  add_breadcrumb "articles", :articles_path, only: [:index, :show]

  def index
    @q = Article.ransack(params[:q])
    @articles = @q.result(distinct: true)
  end

  def en_360
    add_breadcrumb "fomat en 360", :en_360_path
    # @long_articles = Article.where(is_longformat: true)
    @q = Article.where(is_longformat: true).ransack(params[:q])
    @long_articles = @q.result(distinct: true)
  end

  def actus
    add_breadcrumb "les actus", :actus_path
    # @info_articles = Article.where(is_longformat: false)
    @q = Article.where(is_longformat: false).ransack(params[:q])
    @info_articles = @q.result(distinct: true)
  end

  # GET /articles/1 or /articles/1.json
  def show
    @article = Article.find(params[:id])
  end

  # GET /articles/new
  def new
    @article = Article.new
    add_breadcrumb "new-article", :new_article_path
  end

  # GET /articles/1/edit
  def edit
    add_breadcrumb "edit-article", :edit_article_path
  end

  # POST /articles or /articles.json
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to article_url(@article), notice: "Article was successfully created." }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to article_url(@article), notice: "Article was successfully updated." }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    @article.destroy

    respond_to do |format|
      format.html { redirect_to articles_url, notice: "Article was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:title, :lead, :thumbnail, :text_content, :media, :mood_value, :keywords, :is_longformat, :is_draft)
    end
end
