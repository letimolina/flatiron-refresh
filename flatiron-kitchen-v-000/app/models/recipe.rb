class Recipe < ActiveRecord::Base
  validates :name, presence: true
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  # accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(ingredients_attributes)
    ingredients_attributes.values.each do |name|
      ingredient = Ingredient.find_or_create_by(name)
      self.ingredients << ingredient
    end
  end
end
