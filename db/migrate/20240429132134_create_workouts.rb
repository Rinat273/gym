class CreateWorkouts < ActiveRecord::Migration[7.1]
  def change
    create_table :workouts do |t|
      t.references :train, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
