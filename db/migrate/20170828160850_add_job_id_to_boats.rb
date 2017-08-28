class AddJobIdToBoats < ActiveRecord::Migration[5.1]
  def change
    add_column :boats, :job_id, :integer
  end
end
