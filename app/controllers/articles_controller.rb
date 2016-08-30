class ArticlesController < ApplicationController
	before_action :find_article, only: [:show, :edit, :update, :destroy]
	
	def index
		@articles = Article.all.order("created_at DESC")
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		if @article.save
			flash[:success] = "Your article was successfully created!"
			redirect_to articles_path
		else
			render 'new'
		end
	end

	def show
	end

	private

	def article_params
		params.require(:article).permit(:title, :body, :image)
	end

	def find_article
		@article = Article.find([:id])
	end
end
