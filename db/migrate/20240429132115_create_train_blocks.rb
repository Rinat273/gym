class CreateTrainBlocks < ActiveRecord::Migration[7.1]
  def change
    create_table :train_blocks do |t|
      t.references :train_plan, null: false, foreign_key: true
      t.text :title
      t.integer :sequence_number

      t.timestamps
    end
  end
end
