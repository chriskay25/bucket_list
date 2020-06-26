class Bucket < ActiveRecord::Migration[6.0]
  def change
    create_table :buckets do |t|
      t.string :list_item
      t.text :notes
      t.boolean :complete
    
      t.timestamps
    end
    
  end
end
