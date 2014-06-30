class Browse
  def call(env)
    request = Rack::Request.new(env)

    catalog = ProductCatalog.new
    products = catalog.get_all

    content = ""
    products.each do |product|
      content << "<p>#{product.name}: #{product.price}</p>"
    end

    [200, {"Content-type" => "text/html"}, [content] ]

  end
end