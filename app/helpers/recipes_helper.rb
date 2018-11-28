module RecipesHelper

  def formata_caloria(recipe)
    if recipe.light?
      recipe.calories
    end
  end
end
