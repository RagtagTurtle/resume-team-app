class Api::ExperiencesController < ApplicationController
  def create
    @experience = Experience.new(
                                  start_date: params[:start_date],
                                  end_date: params[:end_date],
                                  job_title: params[:job_title],
                                  company_name: params[:company_name],
                                  details: params[:details]
                                 )
    @experience.save
    render 'show.json.jbuilder'
  end

  def update
    experience_id = params[:id]
    @experience = Experience.find(experience_id)

    @experience.start_date = params[:start_date] || @experience.start_date
    @experience.end_date = params[:end_date] || @experience.end_date
    @experience.job_title = params[:job_title] || @experience.job_title
    @experience.company_name = params[:company_name] || @experience.company_name
    @experience.details = params[:details] || @experience.details

    @experience.save

    render 'show.json.jbuilder'
  end

  def destroy
    experience_id = params[:id]
    @experience = Experience.find(:id)
    @experience.destroy
    render json: {message: "Experience successfully destroyed"}

  end


end
