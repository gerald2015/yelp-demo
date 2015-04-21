class CreatePbJs < ActiveRecord::Migration
  def change
    create_table :pb_js do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :website
      t.text   :description
      
      t.timestamps
    end
  end
end
