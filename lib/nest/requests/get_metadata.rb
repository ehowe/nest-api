class Nest::GetMetadata
  include Nest::Request

  def real
    cistern.request(:get, "/")
  end
end
