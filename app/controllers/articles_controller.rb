class ArticlesController < ApplicationController
  def index         # GET /articles
    @articles = Article.all
  end

  def show          # GET /articles/:id
    set_article
  end

  def new           # GET /articles/new
    @article = Article.new
  end

  def create        # POST /articles
    article = Article.create(article_params)
    redirect_to article_path(article)
  end

  def edit          # GET /articles/:id/edit
    set_article
  end

  def update        # PATCH /articles/:id
    set_article
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy       # DELETE /articles/:id
    set_article
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:name, :done)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
