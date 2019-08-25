class TasksController < ApplicationController
  def index
    if params[:query].present?
      # error SQL syntax with query = name' name
      # @tasks = Task.where("name LIKE '%#{params[:query]}%'")

      @tasks = Task.where("name LIKE :query", query: "%#{params[:query]}%")
    else
      @tasks = Task.all
    end
  end
end
