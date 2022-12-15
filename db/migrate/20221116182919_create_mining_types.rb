class CreateMiningTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :mining_types do |t|
      t.string :name
      t.string :title

      t.timestamps
    end
  end
end
