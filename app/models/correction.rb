class Correction < ApplicationRecord
  belongs_to :answer

  validates :body, presence: true
end
