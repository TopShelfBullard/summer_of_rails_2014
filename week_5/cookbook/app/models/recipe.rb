class Recipe < ActiveRecord::Base
  validates_presence_of :title, :ingredients, :instructions
  validates :title, uniqueness: {case_sensitive: true, message: "must be unique"}
end
