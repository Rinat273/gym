class CreateExercises < ActiveRecord::Migration[7.1]
  def change
    create_table :exercises do |t|
      t.references :train_block, null: false, foreign_key: true
      t.integer :approach_number
      t.integer :repeats
      t.integer :mass

      t.timestamps
    end
  end
end
