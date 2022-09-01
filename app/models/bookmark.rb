class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie, uniqueness: { scope: :list }
  validates :comment, length: { minimum: 6, too_short: 'your comment must be atleast 6 characters long' }
end
