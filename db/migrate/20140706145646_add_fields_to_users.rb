class AddFieldsToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :datatel_id
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :suffix
      t.text :title
    end
  end
end
