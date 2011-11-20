class AddPriceToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :price, :integer
  end
end
