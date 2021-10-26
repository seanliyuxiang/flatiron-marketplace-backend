class Review < ActiveRecord::Base

  belongs_to :item
  
  belongs_to :reviewer,
    primary_key: :id,
    foreign_key: :reviewer_id,
    class_name: :User
  
end