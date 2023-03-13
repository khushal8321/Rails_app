class Item < ApplicationRecord
    has_many :modifiers, through: :itemmodifiers
    belongs_to :category, optional:true
    has_one :rating, as: :rateable

    default_scope -> { order(created_at: :asc) }

    scope :active, -> { where(status :true)}
    scope :inactive, -> { where(status :false)}
    scope :good_rating, -> { joins(:rating).where('ratings.rating >= ?', 4) }
    scope :average_rating, -> { joins(:rating).where('ratings.rating < ?', 4) }
end
