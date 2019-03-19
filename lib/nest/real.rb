class Nest::Real
  attr_reader :url, :connection, :access_token

  def initialize(attributes={})
    @url          = attributes[:url]          || 'https://developer-api.nest.com/'
    @access_token = attributes[:access_token] || ENV["ACCESS_TOKEN"]
    @connection   = Faraday.new(url: @url, headers: { "Content-Type" => "application/json" }) do |b|
      b.adapter :excon
      b.authorization :Bearer, @access_token
    end
  end

  def request(method, path, args={})
    res = connection.send(method) do |req|
      req.url path
    end

    while res.status == 307
      redirect_client = Faraday.new(res.headers["Location"]) do |b|
        b.adapter :excon
        b.authorization :Bearer, @access_token
      end

      res = redirect_client.send(method, "/")
    end

    Oj.load(res.body)
  end
end
