class Subject < ApplicationRecord
  belongs_to :subjectable, polymorphic: true
  has_many :comments, as: :commentable, dependent: :destroy
end
