class ArticlesController < ApplicationController
  def new
  end

  def create
    # render plain: params[:article].inspect
    #  @article = Article.new(params[:article])
      @article = Article.new(article_params)

      @article.save
      redirect_to @article
  end

  def show
      @article = Article.find(params[:id])
    end

  def index
      @artices = Article.all
  end

  private
    def article_params
      params.require(:article) .permit(:title, :text)
    end
end
