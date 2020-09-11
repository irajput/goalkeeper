class UsersController < ApplicationController

    def create
        @team = Team.find(params[:team_id])
        @user = @team.users.create(user_params)
        redirect_to team_path(@team)
        
        end
        def destroy
            @team = Team.find(params[:team_id])
            @user=@team.users.find(params[:id])
            @user.destroy
            redirect_to team_path(@team)
        end
        

        private def user_params
            params.require(:user).permit(:name, :email, :role)
            end






end
