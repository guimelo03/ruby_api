class TestMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    # puts ">>>>>> #{env}"
    if env["ORIGINAL_FULLPATH"] == "/"
      ['200', {'Content-Type' => 'text/html'}, ["Teste!"]]
    else
      status, headers, response = @app.call(env)
      headers.merge!({'X-App-Name' => "Notebook - API"})
      [status, headers, [response.body]]
    end
  end
end
  