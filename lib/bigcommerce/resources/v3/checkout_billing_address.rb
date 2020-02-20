# frozen_string_literal: true

# Product
# Catalog of saleable items in the store.
# https://developer.bigcommerce.com/api/stores/v3/products
module Bigcommerce
  module V3
    class CheckoutBillingAddress < Resource
      include Bigcommerce::SubresourceActions.new uri: 'checkouts/%s/billing-address'

      property :first_name
      property :last_name

      property :email
      property :company
      property :phone

      property :address1
      property :address2
      property :city
      property :state_or_province
      property :state_or_province_code
      property :country_code
      property :postal_code
      property :custom_fields
    end
  end
end
