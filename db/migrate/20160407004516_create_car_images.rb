class CreateCarImages < ActiveRecord::Migration
  def change
    create_table :car_images do |t|
      t.string :id_Car
      t.string :picture

      t.timestamps null: false
    end
  end
end
