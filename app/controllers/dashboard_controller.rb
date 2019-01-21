class DashboardController < ApplicationController

  def my_teams
    @teams_created = Team.where(user: current_user).order(created_at: :desc)
    @teams = Team.all
    @my_teams = Team.where(user: current_user)
    @requests = Request.where(user: current_user).order(created_at: :desc)



  end


  def my_requests
    @requests = Request.where(user: current_user)

  end

end
