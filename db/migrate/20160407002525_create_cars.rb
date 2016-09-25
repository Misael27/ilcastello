class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string    :model
      t.string    :image_link
      t.string    :description
      t.boolean   :available
      t.string    :id_User

      t.timestamps null: false
    end
  end
end
