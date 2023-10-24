module CategoriesHelper
  def category_name_from_id(category_id)
    category = Category.find(category_id)
    return category.label if category
    return "Catégorie non trouvée"
  end
end
