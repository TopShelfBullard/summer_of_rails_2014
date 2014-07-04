class HomeController < ApplicationController
  def index
    @title = "home"
    @number_of_recipes = Recipe.count
  end

  def about
    @title = "about"
  end

  def contact
    @title = "contact"
  end
end
