class ArticlesController < ApplicationController
	def new
	end
	def create
		@article = Article.new(params[:article].permit(:title,:text))

		@article.save

		redirect_to action: 'index'	
		#render plain: params[:article].inspect
	end
def index
	@articles = Article.all
end
	def show
		@article = Article.find(params[:id])
	end
end
