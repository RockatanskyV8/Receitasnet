module RecipesHelper

  def formata_caloria(recipe)
    if recipe.light?
      recipe.calories
    end
  end

  def imagem(recipe)
    if recipe.poster.blank?
      image_tag('sem_imagem.gif')
    else
      image_tag(recipe.poster)
    end
  end
end
