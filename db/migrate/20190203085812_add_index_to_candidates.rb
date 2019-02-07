class AddIndexToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_index :candidates, :email, unique: true
  end
end
