class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.string :OE_number, null: false
      t.string :name, null: false
      t.string :line_code, null: false
      t.string :price, null: false
      t.string :UPC, null: false

      t.belongs_to :orders
      t.timestamps null: false
    end
  end
end
