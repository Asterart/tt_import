class JobsController < ApplicationController

  def create
    @job = current_user.jobs.build(job_params)
  end

  private

  def job_params
    params.require(:job).permit(:title, :applied_at)
  end
end
