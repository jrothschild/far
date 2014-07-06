class AddIdNumberToActivitiesAndPublications < ActiveRecord::Migration
  def change
    change_table :activities do |t|
      t.integer :user_id
    end

    change_table :publications do |t|
      t.integer :user_id
    end

  end
end
