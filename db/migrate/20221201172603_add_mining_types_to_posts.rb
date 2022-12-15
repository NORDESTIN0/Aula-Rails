class AddMiningTypesToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :mining_type, foreign_key: true
  end
end
