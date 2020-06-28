class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.string :country
      t.string :city
      t.boolean :complete, :default => false
    
      t.timestamps
    end
  end
end
