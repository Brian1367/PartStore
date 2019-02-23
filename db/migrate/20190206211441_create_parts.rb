class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.string :OE_number, null: false
      t.string :name, null: false
      t.string :line_code, null: false
      t.integer :price, null: false
      t.string :UPC, null: false
      t.string :image_url
      t.integer :weight, null: false
      t.belongs_to :car, null: false
      t.timestamps null: false
      t.boolean :active
    end
  end
end
