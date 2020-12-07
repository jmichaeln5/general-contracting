class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :lead_status
      t.string :lead_source
      t.string :project_address
      t.integer :phone_number
      t.string :email
      t.string :type_of_project
      t.string :payment_method

      t.timestamps
    end
  end
end
