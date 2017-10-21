class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :allergies
      t.date :DOB
      t.decimal :budget

      t.timestamps
    end
  end
end
