class HomeController < ApplicationController
  def index
    @title = "Home"
    @links = Link.last(10)
  end

  def about
    @title = "About"
  end
end
