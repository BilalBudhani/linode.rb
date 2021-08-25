module Linode
  class SshKeysResource < Resource
    def list(**params)
      response = get_request("profile/sshkeys", params: params)
      Collection.from_response(response, type: SshKey)
    end

    def create(**attributes)
      SshKey.new post_request("profile/sshkeys", body: attributes).body
    end

    def retrieve(ssh_key_id:)
      SshKey.new get_request("profile/sshkeys/#{ssh_key_id}").body
    end

    def update(ssh_key_id:, **attributes)
      patch_request("profile/sshkeys/#{ssh_key_id}", body: attributes)
    end

    def delete(ssh_key_id:)
      delete_request("profile/sshkeys/#{ssh_key_id}")
    end
  end
end