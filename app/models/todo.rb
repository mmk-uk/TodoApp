class Todo < ApplicationRecord
  validates :content, presence: true, length: { maximum: 255 }
  validates :deadline, presence: true
end
