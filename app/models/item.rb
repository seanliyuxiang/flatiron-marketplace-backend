class Item < ActiveRecord::Base

  belongs_to :owner,
    primary_key: :id,
    foreign_key: :owner_id,
    class_name: :User

  has_many :reviews

  has_many :reviewers,
    through: :reviews
  
end