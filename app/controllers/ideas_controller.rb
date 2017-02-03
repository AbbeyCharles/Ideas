class IdeasController < ApplicationController
  def index
    @user = User.find_by_id session[:id]
    @ideas = Idea.all
  end

  def create
    user = User.find_by_id session[:id]
    idea = Idea.create(content:params[:content], user_id:user.id)
    redirect_to '/ideas'
  end

  def like
    user = User.find_by_id session[:id]
    idea = Idea.find_by_id params[:id]
    like = Like.create(user_id:user.id, idea_id:idea.id, count:1)
    redirect_to "/ideas/"
  end

  def show
    @idea = Idea.find_by_id params[:id]
    @likes = Like.where(idea_id:@idea.id)
    @user = Idea.where(user_id:session[:id])
  end

  def delete
  end
end
