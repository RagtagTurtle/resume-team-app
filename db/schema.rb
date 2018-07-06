


ActiveRecord::Schema.define(version: 20180706010949) do



  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "educations", force: :cascade do |t|
    t.string "start_date"
    t.string "end_date"
    t.string "degree"
    t.string "university_name"
  end

  create_table "experiences", force: :cascade do |t|
    t.string "start_date"
    t.string "end_date"
    t.string "job_title"
    t.string "company_name"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "skill_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.text "bio"
    t.string "linked_in_url"
    t.string "personal_blog_url"
    t.string "github_url"
    t.string "photo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "capstone_name"
    t.text "capstone_description"
    t.string "capstone_url"
  end

end
