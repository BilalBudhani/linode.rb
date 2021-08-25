module Linode
  class TokensResource < Resource
    def list(**params)
      response = get_request("profile/tokens", params: params)
      Collection.from_response(response, type: Token)
    end

    def create(**attributes)
      Token.new post_request("profile/tokens", body: attributes).body
    end

    def retrieve(token_id:)
      Token.new get_request("profile/tokens/#{token_id}").body
    end

    def update(token_id:, **attributes)
      patch_request("profile/tokens/#{token_id}", body: attributes)
    end

    def delete(token_id:)
      delete_request("profile/tokens/#{token_id}")
    end
  end
end