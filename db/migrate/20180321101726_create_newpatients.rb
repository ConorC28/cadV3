class CreateNewpatients < ActiveRecord::Migration[5.1]
  def change
    create_table :newpatients do |t|
      t.text :firstname
      t.text :seconmdname
      t.text :dob
      t.text :address
      t.text :phone
      t.text :illness
      t.text :medinfo
      t.text :nextkinfirstname
      t.text :nextkinsecondname
      t.text :nextkincontact
      t.text :nextkinaddress

      t.timestamps
    end
  end
end
