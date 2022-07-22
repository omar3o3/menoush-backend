class CreateDesserts < ActiveRecord::Migration[6.1]
  def change
    create_table :desserts do |t|
      t.string :english_name
      t.string :arabic_name
      t.string :dessert_type
      t.decimal :price

      t.timestamps
    end
  end
end
