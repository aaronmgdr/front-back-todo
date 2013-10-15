class HomeController < ApplicationController
  def welcome
    @tasks = Task.all.to_json
    @task = Task.last.to_json
  end
end
