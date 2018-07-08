class Api::SkillsController < ApplicationController
  def create
    @skill = Skill.new(
                                  student_id: current_user.id,
                                  name: params[:skill_name]
                                 )
    @skill.save
    render 'show.json.jbuilder'
  end

  def update
    skill_id = params[:id]
    @skill = Skill.find(skill_id)

    @skill.skill_name = params[:skill_name] || @skill.skill_name
    @skill.save

    render 'show.json.jbuilder'
  end

  def destroy
    skill_id = params[:id]
    @skill = Skill.find(:id)
    @skill.destroy
    render json: {message: "Skill successfully destroyed"}

  end
end
