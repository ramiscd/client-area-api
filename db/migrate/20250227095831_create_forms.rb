class CreateForms < ActiveRecord::Migration[7.1]
  def change
    create_table :forms do |t|
      t.string :country
      t.string :question
      t.boolean :document_passport
      t.boolean :document_rg
      t.boolean :payment
      t.string :form_type

      t.timestamps
    end
  end
end
