class AddIndexEventsOnBucketId < ActiveRecord::Migration[6.0]
  def change
    add_reference :buckets, :events
  end
end
