class CreatePlates < ActiveRecord::Migration
  def change
    create_table :plates do |t|
      t.string :title
      t.text :description
      t.string :producer

      t.timestamps null: false
    end
  end
end
