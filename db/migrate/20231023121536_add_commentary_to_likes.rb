class AddCommentaryToLikes < ActiveRecord::Migration[7.0]
  def change
    add_reference :likes, :commentary, null: false, foreign_key: true
  end
end
