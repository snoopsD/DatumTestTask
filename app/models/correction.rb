class Correction < ApplicationRecord
  belongs_to :answer

  validates :body, presence: true

  def approve?
    mark
  end

  def approve
    update!(mark: true)
  end
end
