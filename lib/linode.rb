require "faraday"
require "faraday_middleware"
require "linode/version"

module Linode
  autoload :Client, "linode/client"
  autoload :Collection, "linode/collection"
  autoload :Error, "linode/error"
  autoload :Resource, "linode/resource"
  autoload :Object, "linode/object"


  autoload :InstancesResource, "linode/resources/instances"
  autoload :TokensResource, "linode/resources/tokens"
  autoload :RegionsResource, "linode/resources/regions"
  autoload :TypesResource, "linode/resources/types"


  autoload :Instance, "linode/objects/instance"
  autoload :Token, "linode/objects/token"
  autoload :Region, "linode/objects/region"
  autoload :Type, "linode/objects/type"
end