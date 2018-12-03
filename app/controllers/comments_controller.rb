class CommentsController < ApplicationController
  def index
    @recipe=Recipe.find(params[:recipe_id])
    @comments = @recipe.comments
  end
end
