class CreateUsersDestinationsJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :destinations do |t|
      t.index :user_id
      t.index :destination_id
    end 
  end
end
