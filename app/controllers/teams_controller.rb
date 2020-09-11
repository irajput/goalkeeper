class TeamsController < ApplicationController
    def index
    end
    def about
        @teams=Team.all
    end
    def new
        @team =Team.new
    end
    def show
        @team=Team.find(params[:id])
    end
    def create
        @team = Team.new(team_params)
        @team.save
		redirect_to @team
    end
    def destroy
		@team = Team.find(params[:id])
		@team.destroy
		redirect_to teams_path
	end
    private def team_params
        params.require(:team).permit(:name, :members)
    end








end
