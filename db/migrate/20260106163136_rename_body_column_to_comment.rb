class RenameBodyColumnToComment < ActiveRecord::Migration[8.1]
  def change
    rename_column :reviews, :body, :comment
  end
end
