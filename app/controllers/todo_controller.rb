class TodoController < ApplicationController
  def list
    @todolist = Todo.where(user_id: @current_user.id).order(deadline:"ASC")
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new
    @todo.content = params[:todo][:content]
    @todo.deadline = params[:todo][:deadline]
    @todo.user_id = @current_user.id
    if @todo.save
      redirect_to("/todo/#{@current_user.id}/list")
    else
      render("todo/new")
    end

  end

  def check
    todo = Todo.find_by(id: params[:id])
    todo.done = !todo.done
    todo.save
    redirect_to("/todo/#{@current_user.id}/list")
  end

  def edit
    @todo = Todo.find_by(id: params[:id])
  end

  def update
    @todo = Todo.find_by(id: params[:id])
    @todo.content = params[:todo][:content]
    @todo.deadline = params[:todo][:deadline]
    if @todo.save
      redirect_to("/todo/#{@current_user.id}/list")
    else
      render("todo/new")
    end
  end

  def delete
    @todo = Todo.find_by(id: params[:id])
    @todo.destroy
    redirect_to("/todo/#{@current_user.id}/list")
  end

end
