class CreateExerciseLogs < ActiveRecord::Migration
  def change
    create_table :exercise_logs do |t|
      t.string :category
      t.integer :duration

      t.timestamps

    end
  end
end
