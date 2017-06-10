class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :startdate
      t.date :enddate
      
      t.references :projectowner, foreign_key: true

      t.timestamps
    end
  end
end
