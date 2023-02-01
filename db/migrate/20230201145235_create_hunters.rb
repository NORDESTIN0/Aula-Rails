class CreateHunters < ActiveRecord::Migration[5.2]
  def change
    create_table :hunters do |t|
      t.string :avatar_url
      t.string :gun_url

      t.timestamps
    end
  end
end
