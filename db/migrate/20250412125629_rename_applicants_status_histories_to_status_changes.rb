class RenameApplicantsStatusHistoriesToStatusChanges < ActiveRecord::Migration[7.1]
  def change
    rename_table :applicants_status_histories, :status_changes
  end
end
