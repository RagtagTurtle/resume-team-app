class Api::EducationsController < ApplicationController


  def create
    @education = Education.new(   
                                  student_id: current_user.id,
                                  start_date: params[:start_date],
                                  end_date: params[:end_date],
                                  degree: params[:degree],
                                  university_name: params[:university_name],
                                  details: params[:details]
                                )

    @education.save
    render 'show.json.jbuilder'
  end

  def update
    education_id = params[:id]
    @education = Education.find(education_id)

    @education.start_date = params[:start_date] || @education.start_date
    @education.end_date = params[:end_date] || @education.end_date
    @education.degree = params[:degree] || @education.degree
    @education.university_name = params[:university_name] || @education.university_name
    @education.details = params[:details] || @education.details

    @education.save
      render json: {message: "Your education information has been successfully updated."}

  end


  def destroy 
    education_id = params[:id]
    @education = Education.find(education_id)
    @education.destroy
    render json: {message: "Your education information successfully deleted."} 
  end

end
