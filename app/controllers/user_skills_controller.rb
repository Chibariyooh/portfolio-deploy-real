class User_skillsController < ApplicationController
    def create
        current_user.user_skills.create!(skill_id: params[:skill_id])
        @user_skill.save
        redirect_to root_path
    end

    def update
        @user_skill = @user.user_skills.find(parmas[:user_skill_id])
        @user_skill.save
        @user_skill.update(user_skill_params)
    end

    private
    def user_skill_params
        params.require(:user_skills).permit(:skill_level,:user_id,:skill_id)
    end
end