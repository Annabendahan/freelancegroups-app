class DashboardController < ApplicationController

  def my_teams
    @teams = Team.where(user: current_user)
  end


  def my_requests
    @requests = Request.where(user: current_user)
  end

end
