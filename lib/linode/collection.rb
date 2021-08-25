module Linode
  class Collection
    attr_reader :data, :page, :pages, :results

    def self.from_response(response, key: "data", type:)
      body = response.body
      new(
        data: body[key].map { |attrs| type.new(attrs) },
        page: body.dig("page"),
        pages: body.dig("pages"),
        results: body.dig("results")
      )
    end

    def initialize(data:, page:, pages:, result:)
      @data = data
      @page = page
      @pages = pages
      @results = results
    end
  end
end