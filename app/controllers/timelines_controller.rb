class TimelinesController < ApplicationController
    def create
        @team = Team.find(params[:team_id])
        @timeline = @team.create_timeline(timeline_params)
        redirect_to team_timeline_path(@team)
        
    end
    def show
        @timeline=Timeline.find(params[:team_id])
        @team = Team.find(params[:team_id])

    end
    def new
        @team = Team.find(params[:team_id])
        @timeline=Timeline.new
    end
  
    
    private def timeline_params
        params.require(:timeline).permit(:numMilestone, :date)
    end
    
    
    
    
end
