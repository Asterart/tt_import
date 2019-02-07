class AddAppliedAtToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :applied_at, :datetime
  end
end
