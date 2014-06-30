class SearchForm
  def call(env)
    content = %Q{
      <h2>Product search</h2>
      <form method="GET" action="/search">
        <label for="query">Search term</label>
        <input id="query" type="text" name="query">
        <input type="submit" value="Submit">
      </form>
      <a href="/browse">Browse Full Catalog</a>
    }

    [200, {"Content-type" => "text/html"}, [content] ]
  end
end