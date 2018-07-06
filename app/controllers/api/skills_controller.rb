class Api::SkillsController < ApplicationController
  def create
    @skill = Skill.new(
                                  name: params[:skill_name]
                                 )
    render 'show.json.jbuilder'
  end

  def update
    skill_id = params[:id]
    @skill = Skill.find(skill_id)

    @skill.skill_name = params[:skill_name] || @skill.skill_name
  

    render 'show.json.jbuilder'
  end

  def destroy
    skill_id = params[:id]
    @skill = Skill.find(:id)
    @skill.destroy
    render json: {message: "Skill successfully destroyed"}

  end
end