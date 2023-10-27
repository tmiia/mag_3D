class CreateVotes < ActiveRecord::Migration[7.0]
  def change
    create_table :votes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :poll, null: false, foreign_key: true
      t.string :option

      t.timestamps
    end
  end
end
