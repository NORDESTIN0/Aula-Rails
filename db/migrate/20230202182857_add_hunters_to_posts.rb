class AddHuntersToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :hunters, foreign_key: true
  end
end
