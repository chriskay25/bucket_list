class CreateBucketsEventsJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :buckets, :events do |t|
      t.index :bucket_id
      t.index :event_id     
    end 
  end
end
