class CreateBuckets < ActiveRecord::Migration[6.0]
  def change
    create_table :buckets do |t|
      t.belongs_to :user

      t.timestamps
    end 
  end
end
