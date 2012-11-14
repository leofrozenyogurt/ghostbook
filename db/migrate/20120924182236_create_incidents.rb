class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string :name
      t.date :date_of_incident
      t.string :address
      t.float :latitude
      t.float :longitude
      t.text :description
      t.string :email
      t.boolean :can_we_send_you_email

      t.timestamps
    end
  end
end
