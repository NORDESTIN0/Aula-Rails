class CreateHunters < ActiveRecord::Migration[5.2]
  def change
    create_table :hunters do |t|
      t.string :name
      t.string :image
      t.string :gun

      t.timestamps
    end
  end
end
