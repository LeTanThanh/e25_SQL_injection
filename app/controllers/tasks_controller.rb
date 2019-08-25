class TasksController < ApplicationController
  def index
    if params[:query]
      @tasks = Task.all
    else
      @tasks = Task.all
    end
  end
end
