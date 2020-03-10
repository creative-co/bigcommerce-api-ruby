module Bigcommerce
  module V3
    class PriceList < Resource
      include Bigcommerce::ResourceActions.new uri: 'pricelists/%d'

      property :id
      property :name
      property :active
    end
  end
end

