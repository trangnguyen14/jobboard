class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
  @job = Job.new
  end
  def create
    @job = Job.new
    if @job.save
      redirect_to root_path
    else
      render "new"
    end
  end
end
