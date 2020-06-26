class CreateBuckets < ActiveRecord::Migration[6.0]
  def change
    create_table :buckets do |t|
      t.string :event
      t.text :note
      t.boolean :complete, :default => false
      t.belongs_to :user

      t.timestamps
    end 
  end
end
