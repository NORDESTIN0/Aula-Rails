class Post < ApplicationRecord
    belongs_to :mining_type, optional: true
    has_one :hunter
end
