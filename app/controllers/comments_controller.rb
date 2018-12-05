class CommentsController < ApplicationController
  before_action :set_recipe
  def index
    @comments = @recipe.comments
  end

  def new
    @comment=@recipe.comments.new
  end

  def create
    @comment=@recipe.comments.new(comment_params)
    if @comment.save
      redirect_to recipe_comments_path(@recipe), notice:"Comentário gravado com sucesso!"
    else
      render :new
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:name, :comment, :rating)
    end

    def set_recipe
      @recipe=Recipe.find(params[:recipe_id])
    end
end
