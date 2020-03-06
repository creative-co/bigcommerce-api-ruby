module Bigcommerce
  module V3
    class PriceListAssignment < Resource
      include Bigcommerce::ResourceActions.new uri: 'pricelists/assignments'

      property :id
      property :customer_group_id
      property :price_list_id
      property :channel_id
    end
  end
end

