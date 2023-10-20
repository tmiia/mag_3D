class AddPseudonymToAdmins < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :pseudonym, :string
  end
end
