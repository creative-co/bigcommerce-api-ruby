# frozen_string_literal: true

# Product
# Catalog of saleable items in the store.
# https://developer.bigcommerce.com/api/stores/v3/products
require 'bigcommerce/resources/v3/option_value.rb'

module Bigcommerce
  module V3
    class CustomerAddress < Resource
      include Bigcommerce::ResourceActions.new uri: 'customers/addresses/%s'
      include Hashie::Extensions::DeepLocate
      include Hashie::Extensions::DeepFind

      property :id

      property :first_name
      property :last_name
      property :company
      property :address1
      property :address2
      property :city
      property :state_or_province
      property :postal_code
      property :country_code
      property :phone
      property :address_type
      property :customer_id
      property :country
      property :form_fields
    end
  end
end
