class CreateXimes < ActiveRecord::Migration
  def change
    create_table :ximes do |t|
      t.string :name
      t.text :description
      t.string :picture

      t.timestamps null: false
    end
  end
end
