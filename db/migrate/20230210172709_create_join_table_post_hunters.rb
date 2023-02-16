class CreateJoinTablePostHunters < ActiveRecord::Migration[5.2]
  def change
    belongs_to :posts
    belong_to :hunters
  end
end
