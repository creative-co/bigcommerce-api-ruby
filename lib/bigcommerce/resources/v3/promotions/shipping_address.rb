require 'bigcommerce/resources/v3/promotions/rules/action.rb'

module Bigcommerce
  module V3
    module Promotions
      class ShippingAddress < Resource
        # property :countries, coerce: Array[Country]
        property :countries
        property :not, coerce: ShippingAddress

        class Country < Resource
          property :iso2_country_code, coerce: String
        end
      end
    end
  end
end
