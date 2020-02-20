module Bigcommerce
  module V3
    class CartItem < Resource
      include Bigcommerce::SubresourceActions.new uri: 'carts/%s/items/%s'

      property :id
    end
  end
end
