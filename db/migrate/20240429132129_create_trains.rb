class CreateTrains < ActiveRecord::Migration[7.1]
  def change
    create_table :trains do |t|
      t.references :train_plan, null: false, foreign_key: true
      t.integer :current_step_number, default: 0

      t.timestamps
    end
  end
end
