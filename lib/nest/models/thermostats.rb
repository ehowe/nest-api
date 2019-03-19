class Nest::Thermostats
  include Nest::Collection

  model Nest::Thermostat

  def all
    data = cistern.get_metadata["devices"]["thermostats"].map { |k,v| v }
    load(data)
  end
end
