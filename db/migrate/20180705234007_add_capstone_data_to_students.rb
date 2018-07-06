class AddCapstoneDataToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :capstone_name, :string
    add_column :students, :capstone_description, :string
    add_column :students, :capstone_url, :string
  end
end
