class CreateStatuses < ActiveRecord::Migration[7.1]
  def change
    create_table :statuses do |t|
      t.string :name
      t.belongs_to :application, null: false, foreign_key: true

      t.timestamps
    end
  end
end
