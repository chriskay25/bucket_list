class RemoveForeignKeyDestinationsUsers < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :destinations, :users
  end
end
