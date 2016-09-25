class CreateShowcars < ActiveRecord::Migration
  def change
    create_table :showcars do |t|
      t.string :name  , unique: true
      t.string :description
      t.string :photo_link

      t.timestamps null: false
    end
  end
end
