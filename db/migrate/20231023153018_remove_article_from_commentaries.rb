class RemoveArticleFromCommentaries < ActiveRecord::Migration[7.0]
  def change
    remove_column :commentaries, :article_id, :integer
  end
end
