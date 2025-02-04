class Skill < ApplicationRecord
    # Validations
    validates :name, presence: true
    validates :level, presence: true, numericality: { only_integer: true, greater_than: 0 }
  
    # Associations
    has_many :skill_reports
    has_many :candidats, through: :skill_reports
    has_many :assessments, through: :skill_reports
  
    # Callbacks
    before_save :normalize_name
  
    private
  
    def normalize_name
      self.name = name.titleize
    end
end
  