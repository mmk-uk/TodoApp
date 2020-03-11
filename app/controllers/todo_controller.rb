class TodoController < ApplicationController
  def list
    @todolist = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new
    @todo.content = params[:todo][:content]
    @todo.deadline = params[:todo][:deadline]
    if @todo.save
      redirect_to("/")
    else
      render("todo/new")
    end

  end

  def check
    todo = Todo.find_by(id: params[:id])
    todo.done = !todo.done
    todo.save
    redirect_to("/")
  end

end
