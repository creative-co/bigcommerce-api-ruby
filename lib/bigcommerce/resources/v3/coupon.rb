# Checkout Coupon
# https://developer.bigcommerce.com/api-reference/cart-checkout/storefront-checkout-api/checkout-coupons/checkoutscouponsbycheckoutidpost

module Bigcommerce
  module V3
    class Coupon < Resource
      include Bigcommerce::SubresourceActions.new uri: 'checkouts/%s/coupons'

      property :coupon_code
    end
  end
end
