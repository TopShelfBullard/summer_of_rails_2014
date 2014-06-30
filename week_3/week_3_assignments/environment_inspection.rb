require 'rack'

class EnvironmentInspection
  def call(env)

    content = browser_detection_message(env)

    [200, {"Content-type" => "text/plain"}, [content] ]
  end

  def browser_detection_message(hash)

    user_agent = hash["HTTP_USER_AGENT"]

    browsers = {"Firefox" => "It's Firefox.",
                "Chrome" => "Hi Chrome user!",
                "Internet Explorer" => "Why are you using IE?"}

    browsers.each {|key, value|
      if user_agent.include?(key)
        return value
      end}

  end

end

app = EnvironmentInspection.new

server = Rack::Server.new :app => app, :server => "webrick"
server.start