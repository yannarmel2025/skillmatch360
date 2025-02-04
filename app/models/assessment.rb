class Assessment < ApplicationRecord
    # Validations
    validates :title, presence: true
    validates :description, presence: true
  
    # Associations
    has_many :skill_reports
    has_many :candidats, through: :skill_reports
  
    # Scopes
    scope :recent, -> { order(created_at: :desc) }
  
    # Callbacks
    before_save :sanitize_description
  
    private
  
    def sanitize_description
      self.description = description.strip
    end
  end
  