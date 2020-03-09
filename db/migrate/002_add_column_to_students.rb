class AddColumnToStudents < ActiveRecord::Migration 
    def change                  # adding a column called 'boolean' and set as default: false
        add_column :students, :active, :boolean, default: false 
    end 
end 