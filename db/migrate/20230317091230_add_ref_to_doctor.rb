class AddRefToDoctor < ActiveRecord::Migration[7.0]
  def change
    add_reference :doctors, :hospital, foreign_key: true
  end
end
