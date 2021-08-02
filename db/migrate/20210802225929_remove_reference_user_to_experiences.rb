class RemoveReferenceUserToExperiences < ActiveRecord::Migration[6.0]
  def change
    remove_reference :experiences, :user
  end
end
