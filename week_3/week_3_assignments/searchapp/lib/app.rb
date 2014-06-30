require 'rack'

require_relative 'handle_results'
require_relative 'product'
require_relative 'product_catalog'
require_relative 'search_form'
require_relative 'browse'

class Application
  def self.run
    Rack::Builder.new do
      map "/" do
        run SearchForm.new
      end

      map "/search" do
        run HandleResults.new
      end

      map "/browse" do
        run Browse.new
      end
    end
  end
end

Application.run