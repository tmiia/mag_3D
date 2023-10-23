class AddCommentaryToCommentaries < ActiveRecord::Migration[7.0]
  def change
    add_reference :commentaries, :commentary, null: false, foreign_key: true
  end
end
