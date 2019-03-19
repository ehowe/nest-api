require "awesome_print"
require "cistern"
require "excon"
require "faraday"
require "faraday_middleware"
require "oj"

class Nest
  include Cistern::Client.with(interface: :module)

  recognizes :url, :access_token

  require_relative "nest/real"
  require_relative "nest/requests/get_metadata"
  require_relative "nest/models/thermostat"
  require_relative "nest/models/thermostats"
end
