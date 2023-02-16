class Post < ApplicationRecord
    belongs_to :mining_type, optional: true
    has_many :posts_hunters
    has_many :posts, through: :post_hunters
end
