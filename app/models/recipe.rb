class Recipe < ApplicationRecord
  def light?
    calories < 100
  end
end
