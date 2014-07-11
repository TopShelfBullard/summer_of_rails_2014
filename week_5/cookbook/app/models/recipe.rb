class Recipe < ActiveRecord::Base
  belongs_to :category
  validates_presence_of :title, :ingredients, :instructions
  validates :title, uniqueness: {case_sensitive: true, message: "must be unique"}
end
