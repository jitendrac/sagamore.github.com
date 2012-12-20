Process.spawn "jekyll --auto"
Process.spawn "rackup _server/config.ru"

Process.waitall
