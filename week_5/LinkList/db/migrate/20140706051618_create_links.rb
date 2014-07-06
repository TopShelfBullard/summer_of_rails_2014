class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.text :url
      t.text :description

      t.timestamps
    end
  end
end
