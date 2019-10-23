class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name 
      t.boolean :active, default: false
      t.timestamps null: false
    end
  end
end