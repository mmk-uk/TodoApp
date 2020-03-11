class AddColumnDoneToTodo < ActiveRecord::Migration[5.1]
  def change
    add_column :todos, :done, :boolean, default: false, null: false
  end
end
