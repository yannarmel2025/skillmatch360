class Feedback < ApplicationRecord
  # Validations
  validates :comment, presence: true

  # Associations
  belongs_to :candidat
  belongs_to :assessment

  # Scopes
  scope :recent, -> { order(created_at: :desc) }

  # Callbacks
  before_save :sanitize_comment

  private

  def sanitize_comment
    self.comment = comment.strip
  end
end