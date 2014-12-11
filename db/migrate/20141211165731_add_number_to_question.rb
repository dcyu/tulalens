class AddNumberToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :number, :boolean
  end
end
