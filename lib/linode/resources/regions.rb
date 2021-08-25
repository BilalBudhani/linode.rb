module Linode
  class RegionsResource < Resource
    def list(**params)
      response = get_request("regions", params: params)
      Collection.from_response(response, type: Region)
    end

    def retrieve(region_id:)
      Region.new get_request("regions/#{region_id}").body
    end
  end
end