class CreateJoinTablePostHunters < ActiveRecord::Migration[5.2]
  def change
    create_join_table :hunters, :posts
  end
end
