class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :contentTitle
      t.string :contentDescription
      t.string :contentImage
      t.boolean :static

      t.timestamps null: false
    end
  end
end
