class ChangeDataTypeOnCapstoneDescription < ActiveRecord::Migration[5.1]
  def change
    change_column :students, :capstone_description, :text
  end
end
