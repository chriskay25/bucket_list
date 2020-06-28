class AddUserToBuckets < ActiveRecord::Migration[6.0]
  def change
    add_reference :buckets, :user
  end
end
