class CreateProjectowners < ActiveRecord::Migration[5.0]
  def change
    create_table :projectowners do |t|
      t.string :name
      t.date :startdate
      t.date :enddate
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
