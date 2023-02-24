class Post < ApplicationRecord
    belongs_to :mining_type, optional: true
    has_and_belongs_to_many :hunters
end
