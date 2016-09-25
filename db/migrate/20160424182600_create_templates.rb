class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :title
      t.string :content
      t.string :urlImage

      t.timestamps null: false
    end
  end
end
