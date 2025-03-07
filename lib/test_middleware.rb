class TestMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    [200, { "Content-Type" => "text/plain" }, ["Teste: Middleware funcionando!"]]
  end
end
  