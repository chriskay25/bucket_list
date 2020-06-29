class AddReferenceUserToDestination < ActiveRecord::Migration[6.0]
  def change
    add_reference :destinations, :user, foreign_key: {dependent: :delete}
  end
end
