module Bigcommerce
  class SubresourceActions < ResourceActions
    def included(base)
      base.send(:include, Request.new(options[:uri]))
      base.extend(ClassMethods)
      options[:disable_methods] ||= []
      methods = ClassMethods.public_instance_methods & options[:disable_methods]
      methods.each { |name| base.send(:remove_method, name) }
    end

    module ClassMethods
      def all(parent_id, params = {})
        raise ArgumentError if parent_id.nil?
        get path.build(parent_id), params
      end

      def fetch_all(parent_id, params = {})
        raise ArgumentError if parent_id.nil?

        default_params = { limit: 250 }
        params = default_params.merge params.dup

        response = raw_request(:get, path.build(parent_id), params)
        meta = JSON.parse(response.body, symbolize_names: true)[:meta]
        result = build_response_object response

        unless meta[:pagination].nil?
          current_page = meta[:pagination][:current_page]
          total_pages = meta[:pagination][:total_pages]
          while current_page < total_pages
            result += all(parent_id, params.merge(page: current_page + 1))
            current_page += 1
          end
        end
        result
      end

      def find(parent_id, resource_id, params = {})
        raise ArgumentError if [parent_id, resource_id].any?(&:nil?)
        get path.build([parent_id, resource_id]), params
      end

      def create(parent_id, params = {})
        raise ArgumentError if parent_id.nil?
        post path.build(parent_id), params
      end

      def update(parent_id, resource_id, params = {})
        raise ArgumentError if [parent_id, resource_id].any?(&:nil?)
        put path.build([parent_id, resource_id]), params
      end

      def destroy(parent_id, resource_id, params = {})
        raise ArgumentError if [parent_id, resource_id].any?(&:nil?)
        delete path.build([parent_id, resource_id]), params
      end

      def destroy_all(parent_id, params = {})
        raise ArgumentError if parent_id.nil?
        delete path.build(parent_id), params
      end
    end
  end
end
