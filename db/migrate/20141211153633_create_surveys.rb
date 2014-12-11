class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.integer :facility_id

      t.timestamps
    end
  end
end
