class ChangeColumnFromStringToInt < ActiveRecord::Migration[5.2]
  def change
    change_column :parts, :price, :integer, using: 'price::integer'
  end
end
