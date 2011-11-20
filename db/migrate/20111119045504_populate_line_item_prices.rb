class PopulateLineItemPrices < ActiveRecord::Migration
  def up
    LineItem.all.each do |line_item|
      line_item.price = line_item.product.price
      line_item.save!
    end
  end
end
