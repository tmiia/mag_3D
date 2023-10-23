class AddDebateToCommentaries < ActiveRecord::Migration[7.0]
  def change
    add_reference :commentaries, :debate, null: false, foreign_key: true
  end
end
