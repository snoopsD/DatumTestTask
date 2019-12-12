class Correction < ApplicationRecord
  belongs_to :answer
  belongs_to :user

  validates :body, presence: true

  def approve?
    mark
  end

  def approve
    update!(mark: true)
  end
end
