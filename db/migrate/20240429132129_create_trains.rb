class CreateTrains < ActiveRecord::Migration[7.1]
  def change
    create_table :trains do |t|
      t.references :train_plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
