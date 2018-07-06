# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.create(first_name: "Bud", last_name: "Light", email: "BudLattes@budlight.com", phone_number: "630-999-9999", bio: "DILLLY DILLY!", linked_in_url: "www.linkedin.com/budlight", personal_blog_url: "www.budlight.com", github_url: "github.com/budlight", photo_url: "https://res.cloudinary.com/teepublic/image/private/s--k51UAChR--/t_Preview/b_rgb:36538b,c_limit,f_jpg,h_630,q_90,w_630/v1516823310/production/designs/2305218_1.jpg", capstone_name: "Dilly Dilly", capstone_description: "App that screams dilly dilly randomly", capstone_url: "www.budlight.com" )

Experience.create(start_date: "6/1/2017", end_date: "12/1/2017", job_title: "Dilly Master", company_name: "Budweiser Company", details: "Go around and scream Dilly Dilly in everyone's face. Proceed to chug bud light.", student_id: 1)

Education.create(start_date: "6/1/2016", end_date: "12/1/2016", degree: "Masters of Dilly", university_name: "Dilly Dilly State", details: "chug bud light.", student_id: 1)

Skill.create(skill_name: "Chugging bud lights.", student_id: 1)

