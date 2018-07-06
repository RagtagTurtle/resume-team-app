class Api::StudentsController < ApplicationController
  def index
    @students = Student.all

    render 'index.json.jbuilder'
  end

  def create
    @student = Student.new(
                            first_name: params[:first_name],
                            last_name: params[:last_name],
                            email: params[:email],
                            phone_number: params[:phone_number],
                            bio: params[:bio],
                            linked_in_url: params[:linked_in_url],
                            personal_blog_url: params[:personal_blog_url],
                            github_url: params[:github_url],
                            photo_url: params[:photo_url],
                            capstone_name: params[:capstone_name],
                            capstone_description: params[:capstone_description],
                            capstone_url: params[:capstone_url]
                          )
    @student.save
    render 'show.json.jbuilder'
  end

  def show
    student_id = params[:id]
    @student = Student.find(student_id)
    render 'show.json.jbuilder'
  end

  def update
    student_id = params[:id]
    @student = Student.find(student_id)

    @student.first_name = params[:first_name] || @student.first_name
    @student.last_name = params[:last_name] || @student.last_name
    @student.email = params[:email] || @student.email
    @student.phone_number = params[:phone_number] || @student.phone_number
    @student.bio = params[:bio] || @student.bio
    @student.linked_in_url = params[:linked_in_url] || @student.linked_in_url
    @student.personal_blog_url = params[:personal_blog_url] || @student.personal_blog_url
    @student.github_url = params[:github_url] || @student.github_url
    @student.photo_url = params[:photo_url] || @student.photo_url
    @student.capstone_name = params[:capstone_name] || @student.capstone_name
    @student.capstone_description = params[:capstone_description] || @student.capstone_description
    @student.capstone_url = params[:capstone_url] || @student.capstone_url

    @student.save
    render 'show.json.jbuilder'
  end

  def destroy
    student_id = params[:id]
    @student = Student.find(student_id)
    @student.destroy
    render json: {message: "Student successfully deleted."}
  end
end
