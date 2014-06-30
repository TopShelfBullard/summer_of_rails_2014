require 'rack'

class Hello
  def call(env)
    name = "A. Mitchell Bullard"
    favorite_quote = "\"Without education we are in a horrible and deadly danger of taking educated people seriously.\""
    quote_attribution = "G. K. Chesterton"

    body_content = %Q{
      #{Output.h1(name)}
      #{Output.blockquote(favorite_quote, quote_attribution)}
    }

    content = Output.html("Me", body_content)

    [200, {"Content-type" => "text/html"}, [content] ]
  end
end


class Output
  def self.html(page_title, page_content)
    %Q{
      <!DOCTYPE html>
      <html lang="en-US">
        <head>
        <meta charset="UTF-8">
        <title>#{page_title}</title>
        </head>
        <body>
          #{page_content}
        </body>
      </html>
    }
  end

  def self.h1(h1_content)
    "<h1>#{h1_content}</h1>"
  end

  def self.blockquote(blockquote_content, attribution)
    blockquote_content += "<br><br>-#{attribution}"
    "<blockquote>#{blockquote_content}</blockquote>"
  end
end

app = Hello.new
server = Rack::Server.new :app => app, :server => "webrick"
server.start