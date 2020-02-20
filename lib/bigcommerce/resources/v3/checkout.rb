# frozen_string_literal: true

# Product
# Catalog of saleable items in the store.
# https://developer.bigcommerce.com/api/stores/v3/products
module Bigcommerce
  module V3
    class Checkout < Resource
      include Bigcommerce::ResourceActions.new uri: 'checkouts/%s'
      include Hashie::Extensions::DeepLocate
      include Hashie::Extensions::DeepFind

      property :id
      property :cart
      property :billing_address
      property :consignments
      property :taxes
      property :coupons
      property :order_id
      property :shipping_cost_total_inc_tax
      property :shipping_cost_total_ex_tax
      property :handling_cost_total_inc_tax
      property :handling_cost_total_ex_tax
      property :tax_total
      property :subtotal_inc_tax
      property :subtotal_ex_tax
      property :grand_total
      property :created_time
      property :updated_time
      property :customer_message

      property :company
      property :phone
      property :registration_ip_address
      property :notes
      property :tax_exempt_category
      property :customer_group_id
      property :date_modified
      property :tax_exempt_category
      property :date_created
      property :address_count
      property :attribute_count
      property :authentication
      property :addresses, coerce: Array[Bigcommerce::V3::CustomerAddress]
      property :attributes
      property :form_fields
      property :store_credit_amounts
      property :accepts_product_review_abandoned_cart_emails
    end
  end
end
