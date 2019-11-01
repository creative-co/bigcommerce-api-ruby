# Scripts
# Scripts are used to create front-end scripts in Stencil theme
# Need to use connection version v3
# https://developer.bigcommerce.com/api/v3/#/reference/scripts/content-scripts/create-a-script

module Bigcommerce
  module V3
    class Script < Resource
      include Bigcommerce::ResourceActions.new uri: 'content/scripts/%s'

      property :uuid
      property :name
      property :description
      property :html
      property :src
      property :auto_uninstall
      property :load_method
      property :location
      property :visibility
      property :kind
      # property :src
      # property :script_tag
      property :api_client_id
      property :date_created
      property :date_modified
    end
  end
end
