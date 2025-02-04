class SkillReport < ApplicationRecord
  # Validations
  validates :score, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  # Associations
  belongs_to :candidat
  belongs_to :assessment
  belongs_to :skill

  # Scopes
  scope :high_scores, -> { where('score >= ?', 80) }

  # Callbacks
  before_save :ensure_positive_score

  private

  def ensure_positive_score
    self.score = 0 if score < 0
  end
end
