# frozen_string_literal: true

# Product
# Catalog of saleable items in the store.
# https://developer.bigcommerce.com/api/stores/v3/products
require 'bigcommerce/resources/v3/cart.rb'
require 'bigcommerce/resources/v3/customer_address.rb'
require 'bigcommerce/resources/v3/consignment.rb'

module Bigcommerce
  module V3
    class Checkout < Resource
      include Bigcommerce::ResourceActions.new uri: 'checkouts/%s'
      include Hashie::Extensions::DeepLocate
      include Hashie::Extensions::DeepFind

      property :id
      property :cart, coerce: Bigcommerce::V3::Cart
      property :billing_address, coerce: Bigcommerce::V3::CustomerAddress
      property :consignments, coerce: Array[Bigcommerce::V3::Consignment]
      property :taxes, coerce: Array
      property :coupons, coerce: Array
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
    end
  end
end
