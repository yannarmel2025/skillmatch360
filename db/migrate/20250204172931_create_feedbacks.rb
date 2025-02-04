class CreateFeedbacks < ActiveRecord::Migration[8.0]
  def change
    create_table :feedbacks do |t|
      t.references :candidate, null: false, foreign_key: true
      t.references :assessment, null: false, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
