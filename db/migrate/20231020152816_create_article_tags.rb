class CreateArticleTags < ActiveRecord::Migration[7.0]
  def change
    create_table :article_tags do |t|

      t.timestamps
    end
  end
end
