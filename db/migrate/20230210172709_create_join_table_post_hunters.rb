class CreateJoinTablePostHunters < ActiveRecord::Migration[5.2]
  def change
    create_table :hunter_post, id: false do |t|
      t.belongs_to :hunter
      t.belongs_to :post
    end
  end
end
