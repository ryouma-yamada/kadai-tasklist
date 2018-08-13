class ApplicationRecord < ActiveRecord::Base
  belongs_to :user
  self.abstract_class = true
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
end
