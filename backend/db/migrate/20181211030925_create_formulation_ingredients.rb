class CreateFormulationIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :formulation_ingredients do |t|

      t.integer :formulation_id
      t.integer :ingredient_id
      t.string :percentage

      t.timestamps
    end

    add_index :formulation_ingredients, :formulation_id
    add_index :formulation_ingredients, :ingredient_id
    add_index :formulation_ingredients,
      [:formulation_id, :ingredient_id],
      unique: true,
      name: :combine_percentage_index
  end
end
