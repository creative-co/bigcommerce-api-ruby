module Bigcommerce
  module V3
    class Cart < Resource
      include Bigcommerce::ResourceActions.new uri: 'carts/%s'

      property :id
      property :customer_id
      property :email
      property :tax_included
      property :base_amount
      property :discount_amount
      property :cart_amount
      property :line_items
      property :coupons
      property :discounts
      property :created_time
      property :updated_time
      property :redirect_urls
      property :channel_id
    end
  end
end

