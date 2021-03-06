class HandleResults
  def call(env)
    request = Rack::Request.new(env)
    query = request.GET["query"]

    catalog = ProductCatalog.new
    products = catalog.find_all_by_keyword(query)

    content = ""
    products.each do |product|
      content << "<p>#{product.name}: #{product.price}</p>"
    end

    [200, {"Content-type" => "text/html"}, [content] ]

  end
end