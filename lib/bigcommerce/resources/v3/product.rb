# frozen_string_literal: true

# Product
# Catalog of saleable items in the store.
# https://developer.bigcommerce.com/api/stores/v3/products
require 'bigcommerce/resources/v3/product_variant.rb'

module Bigcommerce
  module V3
    class Product < Resource
      include Bigcommerce::ResourceActions.new uri: 'catalog/products/%s'
      include Hashie::Extensions::DeepLocate
      include Hashie::Extensions::DeepFind
      # include Hashie::Extensions::DeepFetch
      property :id
      property :name
      property :type
      property :sku
      property :description
      property :weight
      property :width
      property :depth
      property :height
      property :price
      property :cost_price
      property :retail_price
      property :sale_price
      property :tax_class_id
      property :product_tax_code
      property :categories
      property :brand_id
      property :inventory_level
      property :inventory_warning_level
      property :inventory_tracking
      property :fixed_cost_shipping_price
      property :is_free_shipping
      property :is_visible
      property :is_featured
      property :related_products
      property :warranty
      property :bin_picking_number
      property :layout_file
      property :upc
      property :search_keywords
      property :availability
      property :availability_description
      property :gift_wrapping_options_type
      property :gift_wrapping_options_list
      property :sort_order
      property :condition
      property :is_condition_shown
      property :order_quantity_minimum
      property :order_quantity_maximum
      property :page_title
      property :meta_keywords
      property :meta_description
      property :view_count
      property :preorder_release_date
      property :preorder_message
      property :is_preorder_only
      property :is_price_hidden
      property :price_hidden_label
      property :custom_url
      property :open_graph_type
      property :open_graph_title
      property :open_graph_description
      property :open_graph_use_meta_description
      property :open_graph_use_product_name
      property :open_graph_use_image
      property :brand_name
      property :brand_id
      property :gtin
      property :mpn
      property :calculated_price
      property :reviews_rating_sum
      property :reviews_count
      property :reviews
      property :total_sold
      property :custom_fields
      property :bulk_pricing_rules
      property :date_created
      property :date_modified

      property :variants, coerce: Array[Bigcommerce::V3::ProductVariant]
      property :base_variant_id

      property :images
      property :videos
    end
  end
end
