class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.text :firstname
      t.text :secondname
      t.text :dateofbirth
      t.text :address
      t.text :phonenumber
      t.text :illness
      t.text :relevantmedicalinfo
      t.text :nextofkinfirstname
      t.text :nextofkinsecondname
      t.text :nextofkincontactnumber
      t.text :nextofkinaddress

      t.timestamps
    end
  end
end
