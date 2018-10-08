class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :code
      t.string :email
      t.string :full_name
      t.string :language

      t.timestamps
    end
  end
end
