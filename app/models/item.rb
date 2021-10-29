class Item < ActiveRecord::Base

  # Since an item has many reviews as dependents,
  # line 13 states that when an item is destroyed
  # the item's dependent reviews are also destroyed.
  
  belongs_to :owner,
    primary_key: :id,
    foreign_key: :owner_id,
    class_name: :User

  has_many :reviews,
    dependent: :destroy

  has_many :reviewers,
    through: :reviews
  
end