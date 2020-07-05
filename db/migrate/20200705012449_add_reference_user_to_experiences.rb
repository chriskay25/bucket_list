class AddReferenceUserToExperiences < ActiveRecord::Migration[6.0]
  def change
    add_reference :experiences, :user, foreign_key: {dependent: :delete}
  end
end
