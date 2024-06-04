# app/models/comment.rb
class Comment < ApplicationRecord
  # Assuming your comments table has a 'content' column
  validates :comments, presence: true
end
