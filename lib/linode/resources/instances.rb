module Linode
  class InstancesResource < Resource
    def list(**params)
      response = get_request("linode/instances", params: params)
      Collection.from_response(response, type: Instance)
    end

    def create(**attributes)
      Instance.new post_request("linode/instances", body: attributes).body
    end

    def retrieve(instance_id:)
      Instance.new get_request("linode/instances/#{instance_id}").body
    end

    def update(instance_id:, **attributes)
      patch_request("linode/instances/#{instance_id}", body: attributes)
    end

    def delete(instance_id:)
      delete_request("linode/instances/#{instance_id}")
    end
  end
end