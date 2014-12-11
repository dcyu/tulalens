class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.text :text
      t.integer :question_id
      t.integer :survey_id

      t.timestamps
    end
  end
end
