

class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end

# Updating steps are conventionally handled by a controller's edit and update actions. Let's add a typical implementation of these actions to app/controllers/articles_controller.rb, below the create action:

# class ArticlesController < ApplicationController
#   def index
#     @articles = Article.all
#   end

#   def show
#     @article = Article.find(params[:id])
#   end

#   def new
#     @article = Article.new
#   end

#   def create
#     @article = Article.new(article_params)

#     if @article.save
#       redirect_to @article
#     else
#       render :new
#     end
#   end

#   def edit
#     @article = Article.find(params[:id])
#   end

#   def update
#     @article = Article.find(params[:id])

#     if @article.update(article_params)
#       redirect_to @article
#     else
#       render :edit
#     end
#   end

#   private
#     def article_params
#       params.require(:article).permit(:title, :body)
#     end
# end
























# Let's add a private method to the bottom of app/controllers/articles_controller.rb named article_params that filters params. And let's change create to use it:


# 



# In a Rails application, these steps are conventionally handled by a controller's new and create actions. Let's add a typical implementation of these actions


# class ArticlesController < ApplicationController
#   def index
#     @articles = Article.all
#   end

#   def show
#     @article = Article.find(params[:id])
#   end

#   def new
#     @article = Article.new
#   end

#   def create
#     @article = Article.new(title: "...", body: "...")

#     if @article.save
#       redirect_to @article
#     else
#       render :new
#     end
#   end
# end



# class ArticlesController < ApplicationController
#   def index
#     @articles = Article.all
#   end

#    def show
#     @article = Article.find(params[:id])
#   end


# end
