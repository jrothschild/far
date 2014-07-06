class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :service_type
      t.string :presentation
      t.string :blog
      t.string :description
      t.string :date
      t.string :title

      t.timestamps
    end
  end
end
