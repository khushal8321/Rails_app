class Itemmodifier < ApplicationRecord
    belongs_to :items
    belongs_to :modifiers

    default_scope -> { order(created_at: :asc) }
end
