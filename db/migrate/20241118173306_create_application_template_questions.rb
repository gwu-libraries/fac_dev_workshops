class CreateApplicationTemplateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :application_template_questions do |t|
      t.references :application_template, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
