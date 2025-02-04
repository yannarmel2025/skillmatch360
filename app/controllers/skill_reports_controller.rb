class SkillReportsController < ApplicationController
  before_action :set_skill_report, only: [:show, :edit, :update, :destroy]

  def index
    @skill_reports = SkillReport.all
  end

  def show
  end

  def new
    @skill_report = SkillReport.new
  end

  def create
    @skill_report = SkillReport.new(skill_report_params)
    if @skill_report.save
      redirect_to @skill_report, notice: 'Skill report was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @skill_report.update(skill_report_params)
      redirect_to @skill_report, notice: 'Skill report was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @skill_report.destroy
    redirect_to skill_reports_url, notice: 'Skill report was successfully destroyed.'
  end

  private

  def set_skill_report
    @skill_report = SkillReport.find(params[:id])
  end

  def skill_report_params
    params.require(:skill_report).permit(:candidate_id, :assessment_id, :skill_id, :score)
  end
end