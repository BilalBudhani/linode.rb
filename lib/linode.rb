require "faraday"
require "faraday_middleware"
require "linode/version"

module Linode
  autoload :Client, "linode/client"
  autoload :Error, "linode/error"
  autoload :Resource, "linode/resource"
  autoload :Object, "linode/object"


  autoload :InstancesResource, "linode/resources/instances"


  autoload :Instance, "linode/objects/instance"
end