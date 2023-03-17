class AddReferenceToPatients < ActiveRecord::Migration[7.0]
  def change
    add_reference :patients, :hospital
  end
end
