class CreateCitations < ActiveRecord::Migration
  def change
    create_table :citations do |t|
      t.string :model
      t.string :reason
      t.string :id_Car
      t.string :id_User
      t.string :status

      t.timestamps null: false
    end
  end
end
