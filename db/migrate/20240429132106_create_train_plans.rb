class CreateTrainPlans < ActiveRecord::Migration[7.1]
  def change
    create_table :train_plans do |t|
      t.text :title

      t.timestamps
    end
  end
end
