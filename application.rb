class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "<h1>Hello, World</h1>"
    resp.finish
  end

end

