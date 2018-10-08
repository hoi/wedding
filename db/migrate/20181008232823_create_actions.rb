class CreateActions < ActiveRecord::Migration[5.0]
  def change
    create_table :actions do |t|
      t.integer :guest_id
      t.string :description

      t.timestamps
    end
  end
end
