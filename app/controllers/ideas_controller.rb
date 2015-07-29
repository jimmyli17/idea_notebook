class IdeasController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def show
    @idea = Idea.find_by(:id => params['id'])
  end
  
  def new
  end
  
  def create
    @idea = Idea.new
    @idea.text = params['idea']
    @idea.save
    redirect_to "/idea_notebook/#{@idea.id}"
  end
  
  def edit
    @idea = Idea.find_by(id:params['id'])
  end
  
  def update
    @idea = Idea.find_by_id(params['id'])
    @idea.text = params['note']
    if @idea.save
      redirect_to "/idea_notebook/#{@idea.id}"
    else
      render 'edit'
    end
  end
  
  def index
    @ideas = Idea.all
  end
  
  def destroy
    @idea = Idea.find_by(id:params['id'])
    @idea.destroy
    redirect_to '/idea_notebook/'
  end
end
