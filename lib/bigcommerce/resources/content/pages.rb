# Pages
# Content entries in the store's pages.
# https://developer.bigcommerce.com/api-reference/store-management/store-content/pages

module Bigcommerce
  class Pages < Resource
    include Bigcommerce::ResourceActions.new uri: 'pages/%d'

    property :id
    property :parent_id
    property :type
    property :contact_fields
    property :email
    property :name
    property :url
    property :meta_description
    property :body
    property :mobile_body
    property :has_mobile_version
    property :is_visible
    property :is_homepage
    property :meta_title
    property :layout_file
    property :sort_order
    property :search_keywords
    property :meta_keywords
    property :feed
    property :link
    property :content_type

  end
end
