class CreateSkillReports < ActiveRecord::Migration[8.0]
  def change
    create_table :skill_reports do |t|
      t.references :candidate, null: false, foreign_key: true
      t.references :assessment, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
