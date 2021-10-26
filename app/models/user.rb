class User < ActiveRecord::Base

  has_many :items,
    primary_key: :id,
    foreign_key: :owner_id,
    class_name: :Item

  has_many :reviews,
    primary_key: :id,
    foreign_key: :reviewer_id,
    class_name: :Review

  has_many :reviewed_items,
    through: :reviews,
    source: :item

end