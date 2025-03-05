class CreateApplicantsStatusHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :applicants_status_histories do |t|
      t.belongs_to :application, null: false, foreign_key: true
      t.belongs_to :status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
