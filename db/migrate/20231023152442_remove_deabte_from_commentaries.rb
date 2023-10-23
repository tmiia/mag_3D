class RemoveDeabteFromCommentaries < ActiveRecord::Migration[7.0]
  def change
    remove_column :commentaries, :debate_id, :integer
  end
end
