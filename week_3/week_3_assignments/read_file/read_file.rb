require 'rack'

class ReadFile
  def call(env)
    content = read_from_file("html/index.html")

    [200, {"Content-type" => "text/html"}, [content] ]
  end

  def read_from_file(f)
    file_output = ""

    File.open(f, "r") do |file|
      file.each_line do |line|
        file_output += line
      end
    end

    file_output
  end

end

app = ReadFile.new

server = Rack::Server.new :app => app, :server => "webrick"
server.start