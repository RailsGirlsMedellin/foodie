class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.text :content
      t.references :plate, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
