module Linode
  class Client
    BASE_URL = "https://api.linode.com/v4"

    attr_reader :api_key, :adapter

    def initialize(api_key:, adapter: Faraday.default_adapter, stubs: nil)
      @api_key = api_key
      @adapter = adapter

      # Test stubs for requests
      @stubs = stubs
    end

    def instances
      @instances ||= InstancesResource.new(self)
    end

    def tokens
      @tokens ||= TokensResource.new(self)
    end

    def regions
      @regions ||= RegionsResource.new(self)
    end

    def types
      @types ||= TypesResource.new(self)
    end

    def connection
      @connection ||= Faraday.new do |conn|
        conn.url_prefix = BASE_URL
        conn.request :json
        conn.response :json, content_type: "application/json"
        conn.adapter adapter, @stubs
      end
    end
  end
end
