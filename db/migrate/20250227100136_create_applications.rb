class CreateApplications < ActiveRecord::Migration[7.1]
  def change
    create_table :applications do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :form, null: false, foreign_key: true

      t.timestamps
    end
  end
end
