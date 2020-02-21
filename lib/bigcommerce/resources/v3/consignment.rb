# frozen_string_literal: true

# Product
# Catalog of saleable items in the store.
# https://developer.bigcommerce.com/api/stores/v3/products

require 'bigcommerce/resources/v3/customer_address.rb'
module Bigcommerce
  module V3
    class Consignment < Resource
      include Bigcommerce::SubresourceActions.new uri: 'checkouts/%s/consignments/%s'

      property :id
      property :shipping_address, coerce: Bigcommerce::V3::CustomerAddress
      property :available_shipping_options, coerce: Array
      property :selected_shipping_option

      property :coupon_discounts, coerce: Array
      property :discounts, coerce: Array
      property :shipping_cost_inc_tax
      property :shipping_cost_ex_tax
      property :handling_cost_inc_tax
      property :handling_cost_ex_tax
      property :line_item_ids, coerce: Array[String]
    end
  end
end
