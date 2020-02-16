class ArticlesController < ApplicationController
  
  def new
  end

  def edit
    @article = Article.find(params[:id])
  end
  
  def create
    render plain: params[:article].inspect
  end
  
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
end
