class ChangePbJs < ActiveRecord::Migration
  def change
    add_column :pb_js, :text, :description
  end
end
