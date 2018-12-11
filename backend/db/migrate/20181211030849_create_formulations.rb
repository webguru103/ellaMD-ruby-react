class CreateFormulations < ActiveRecord::Migration[5.2]
  def change
    create_table :formulations do |t|

      t.string :name
      t.string :amount1
      t.string :amount2

      t.timestamps
    end
  end
end
