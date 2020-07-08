class RemoveForeignKeyExperiencesUsers < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :experiences, :users
  end
end
