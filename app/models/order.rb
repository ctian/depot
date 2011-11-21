class Order < ActiveRecord::Base
  PAYMENT_TYPES = [ 'Check', 'Credit card', 'Purchase order' ]

  validates :name, :address, :email, :pay_type, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES

  has_many :line_items, dependent: :destroy

  def add_line_items_from_cart(cart)
    cart.line_items.each do |line_item|
      line_item.cart_id = nil
      line_items << line_item
    end
  end
end
