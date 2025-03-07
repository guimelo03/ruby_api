require 'rack'
require 'webrick'  # Certifique-se de carregar o WEBrick

# Define o aplicativo Rack
app = Proc.new do |env|
  ['200', { 'Content-Type' => 'text/html' }, ['A barebones rack app']]
end

# Inicia o servidor WEBrick
Rack::Handler::WEBrick.run(app, Port: 3000, Host: '0.0.0.0')
