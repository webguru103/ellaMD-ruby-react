class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|

      t.string :name
      t.string :minimum_percentage
      t.string :maximum_percentage
      t.string :description
      t.string :classes

      t.timestamps
    end
  end
end
