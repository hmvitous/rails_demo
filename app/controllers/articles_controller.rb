class ArticlesController < ApplicationController
  
  def new
  end

  def edit
    @article = Article.find(params)
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
end
