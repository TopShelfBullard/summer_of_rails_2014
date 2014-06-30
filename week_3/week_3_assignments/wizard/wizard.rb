require 'rack'

class Wizard

  def call(env)
    render_page(env["REQUEST_PATH"])
  end

  def render_page(name)
    name = name == "/" ? "step_one" : name
    content = ""

    File.open("wizard/html/#{name}.html", "r") do |file|
      file.each_line do |line|
        content += line
      end
    end

    [200, {"Content-type" => "text/html"}, [content]]
  end

end

app = Wizard.new
server = Rack::Server.new :app => app, :server => "webrick"
server.start