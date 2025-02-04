class Candidat < ApplicationRecord
    # Validations
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
  
    # Associations
    has_many :skill_reports
    has_many :assessments, through: :skill_reports
  
    # Callbacks
    before_save :normalize_name
  
    private
  
    def normalize_name
      self.name = name.titleize
    end
end
  