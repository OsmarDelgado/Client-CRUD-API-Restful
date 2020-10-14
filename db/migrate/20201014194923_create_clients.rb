class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :business_name
      t.string :rfc
      t.integer :id_direction
      t.integer :cellphone
      t.integer :telephone
      t.string :email
      t.string :status

      t.timestamps
    end
  end
end
