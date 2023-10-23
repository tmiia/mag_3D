class RemoveUserFromCommentaries < ActiveRecord::Migration[7.0]
  def change
    remove_column :commentaries, :user_id, :integer
  end
end
