module Linode
  class TypesResource < Resource
    def list(**params)
      response = get_request("linode/types", params: params)
      Collection.from_response(response, type: Type)
    end

    def retrieve(type_id:)
      Type.new get_request("linode/types/#{type_id}").body
    end
  end
end