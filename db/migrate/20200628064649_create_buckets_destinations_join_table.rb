class CreateBucketsDestinationsJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :buckets, :destinations do |t|
      t.index :bucket_id
      t.index :destination_id
    end 
  end
end
