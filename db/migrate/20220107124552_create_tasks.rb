class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.references :user, foreign_key: true 
      t.timestamps
      t.string :name
      t.text :description
    end
  end
end

