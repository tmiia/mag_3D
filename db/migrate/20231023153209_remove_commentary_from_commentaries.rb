class RemoveCommentaryFromCommentaries < ActiveRecord::Migration[7.0]
  def change
    remove_column :commentaries, :commentary_id, :integer
  end
end
