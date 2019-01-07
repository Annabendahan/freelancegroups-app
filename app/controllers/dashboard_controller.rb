class DashboardController < ApplicationController

  def my_teams
    @teams = Team.where(user: current_user)
  end

end
