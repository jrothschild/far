class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :title
      t.string :volume
      t.string :journal
      t.string :date

      t.timestamps
    end
  end
end
