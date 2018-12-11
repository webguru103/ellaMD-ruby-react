class ChangeClassesToBeArrayInIngredients < ActiveRecord::Migration[5.2]
  def change
    change_column :ingredients, :classes, :text #, default: [], array:true
  end
end
