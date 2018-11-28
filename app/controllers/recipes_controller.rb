class RecipesController < ApplicationController

  def index
    @recipes = ["Strogonofe", "Filé a parmegiana", "Salmão ao Forno"]
  end
end
