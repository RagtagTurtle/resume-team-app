class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.text :bio
      t.string :linked_in_url
      t.string :personal_blog_url
      t.string :github_url
      t.string :photo_url

      t.timestamps
    end
  end
end
