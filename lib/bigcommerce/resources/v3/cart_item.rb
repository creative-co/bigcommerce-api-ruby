module Bigcommerce
  module V3
    class CartItem < Resource
      include Bigcommerce::SubresourceActions.new uri: 'carts/%s/items/%s'

      property :id

      def self.create(cartId, params)
        Bigcommerce::V3::Cart.post path.build(cartId), params
      end
    end
  end
end
