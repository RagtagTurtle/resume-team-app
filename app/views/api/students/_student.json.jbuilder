json.id student.id
json.first_name student.first_name
json.last_name student.last_name
json.email student.email
json.phone_number student.phone_number
json.bio student.bio
json.linked_in_url student.linked_in_url
json.personal_blog_url student.personal_blog_url
json.github_url student.github_url
json.photo_url student.photo_url
json.capstone_name student.capstone_name
json.capstone_description student.capstone_description
json.capstone_url student.capstone_url

json.experiences do
  json.array! student.experiences, partial: "api/experiences/experience", as: :experience
end

json.educations do
  json.array! student.educations, partial: "api/educations/education", as: :education
end

json.skills do
  json.array! student.skills, partial: "api/skills/skill", as: :skill
end